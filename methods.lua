
local BASE_URL = 'https://api.telegram.org/bot' .. config.bot_api_key

if not config.bot_api_key then
	error('You did not set your bot token in config.lua!')
end

local function sendRequest(url, user_id)

	local dat, code = HTTPS.request(url)
	
	if not dat then 
		return false, code 
	end
	
	local tab = JSON.decode(dat)

	if code ~= 200 then
		if tab and tab.description then print(code, tab.description) end
		--403: bot blocked, 429: spam limit ...send a message to the admin, return the code
		if code == 400 then code = api.getCode(tab.description) end --error code 400 is general: try to specify
		db:hincrby('bot:errors', code, 1)
		if code ~= 403 and code ~= 429 and code ~= 110 and code ~= 111 then
			api.sendLog('#BadRequest\n'..vtext(dat)..'\n'..code..'\n(texto en el log)')
			return false, code
		end
		return false, false --if the message is not sent because the bot is blocked, then don't return the code
	end
	
	--actually, this rarely happens
	if not tab.ok then
		return false, tab.description
	end

	return tab

end

local function getMe()

	local url = BASE_URL .. '/getMe'

	return sendRequest(url)

end

local function getUpdates(offset)

	local url = BASE_URL .. '/getUpdates?timeout=20'

	if offset then
		url = url .. '&offset=' .. offset
	end

	return sendRequest(url)

end

local function getCode(error)
	--error = error:gsub('%[Error : %d%d%d : Bad Request: ', ''):gsub('%]', '')
	--error = error:gsub('%[Error : 400 : ', ''):gsub('%]', '')
	for k,v in pairs(config.api_errors) do
		if error:match(v) then
			return k
		end
	end
	return 107 --if unknown
end

local function unbanChatMember(chat_id, user_id)
	
	local url = BASE_URL .. '/unbanChatMember?chat_id=' .. chat_id .. '&user_id=' .. user_id

	--return sendRequest(url)
	
	local dat, res = HTTPS.request(url)
	
	local tab = JSON.decode(dat)
	
	if res ~= 200 then
		return false, res
	end

	if not tab.ok then
		return false, tab.description
	end

	return tab
	
end

local function kickChatMember(chat_id, user_id)

	local url = BASE_URL .. '/kickChatMember?chat_id=' .. chat_id .. '&user_id=' .. user_id

	--return sendRequest(url)
	
	local dat, res = HTTPS.request(url)

	local tab = JSON.decode(dat)

	if res ~= 200 then
		--if error, return false and the custom error code
		print(tab.description)
		return false, api.getCode(tab.description)
	end

	if not tab.ok then
		return false, tab.description
	end

	return tab

end

local function code2text(code, ln, chat_id)
	--the default error description can't be sent as output, so a translation is needed
	if code == 101 then
		return lang[ln].kick_errors[code]
	elseif code == 102 then
		return lang[ln].kick_errors[code]
	elseif code == 103 then
		return lang[ln].kick_errors[code]
	elseif code == 104 then
		return lang[ln].kick_errors[code]
	elseif code == 105 then
		return lang[ln].kick_errors[code]
	elseif code == 106 then
		return lang[ln].kick_errors[code]
	elseif code == 107 then
		return false
	end
end

local function banUserId(chat_id, user_id, name, on_request, no_msg)
	local msg = {}
	msg.chat = {}
	msg.from = {}
	msg.chat.id = chat_id
	msg.from.id = user_id
	msg.from.first_name = name
	return api.banUser(msg, on_request, no_msg)
end

local function banUser(chat_id, user_id, is_normal_group, ln)--no_msg: kick without message if kick is failed
	
	if is_mod2(chat_id, user_id) then return end
	
	local res, code = api.kickChatMember(chat_id, user_id) --try to kick. "code" is already specific
	
	if res then --if the user has been kicked, then...
	    db:hincrby('bot:general', 'ban', 1) --genreal: save how many kicks
		if is_normal_group then
		    local hash = 'chat:'..chat_id..':banned'
	        db:sadd(hash, user_id)
	    end
		return res --return res and not the text
	else ---else, the user haven't been kicked
		local text = api.code2text(code, ln, chat_id)
		return res, text --return the motivation too
	end
end

local function kickUser(chat_id, user_id, ln)-- no_msg: don't send the error message if kick is failed. If no_msg is false, it will return the motivation of the fail
	
	if is_mod2(chat_id, user_id) then return end
	
	local res, code = api.kickChatMember(chat_id, user_id) --try to kick
	
	if res then --if the user has been kicked, then...
	    db:hincrby('bot:general', 'kick', 1) --genreal: save how many kicks
		--unban
		api.unbanChatMember(chat_id, user_id)
		return res
	else
		local motivation = api.code2text(code, ln, chat_id)
		return res, motivation
	end
end

local function unbanUser(chat_id, user_id, is_normal_group)
	
	if is_mod2(chat_id, user_id) then return end
	
	if is_normal_group then
	    local hash = 'chat:'..chat_id..':banned'
	    local removed = db:srem(hash, user_id)
	    if removed == 0 then
		    --text = lang[ln].banhammer.not_banned
		    return false
	    end
	end
	local res, code = api.unbanChatMember(chat_id, user_id)
	return true
end

local function sendMessage(chat_id, text, use_markdown, disable_web_page_preview, reply_to_message_id, send_sound)
	--print(text)
	
	local url = BASE_URL .. '/sendMessage?chat_id=' .. chat_id .. '&text=' .. URL.escape(text)

	url = url .. '&disable_web_page_preview=true'

	if reply_to_message_id then
		url = url .. '&reply_to_message_id=' .. reply_to_message_id
	end
	
	if use_markdown then
		url = url .. '&parse_mode=Markdown'
	end
	
	if not send_sound then
		url = url..'&disable_notification=true'--messages are silent by default
	end
	
	local res, code = sendRequest(url)
	
	if not res and code then --if the request failed and a code is returned (not 403 and 429)
		print('Delivery failed')
		save_log('send_msg', text)
	end
	
	return res, code --return false, and the code

end

local function sendReply(msg, text, markd, send_sound)

	return sendMessage(msg.chat.id, text, markd, true, msg.message_id, send_sound)

end

local function editMessageText(chat_id, message_id, text, keyboard, markdown)
	
	local url = BASE_URL .. '/editMessageText?chat_id=' .. chat_id .. '&message_id='..message_id..'&text=' .. URL.escape(text)
	
	if markdown then
		url = url .. '&parse_mode=Markdown'
	end
	
	url = url .. '&disable_web_page_preview=true'
	
	if keyboard then
		url = url..'&reply_markup='..JSON.encode(keyboard)
	end
	
	return sendRequest(url)

end

local function answerCallbackQuery(callback_query_id, text, show_alert)
	
	local url = BASE_URL .. '/answerCallbackQuery?callback_query_id=' .. callback_query_id .. '&text=' .. URL.escape(text)
	
	if show_alert then
		url = url..'&show_alert=true'
	end
	
	return sendRequest(url)
	
end

local function sendKeyboard(chat_id, text, keyboard, markdown)
	
	local url = BASE_URL .. '/sendMessage?chat_id=' .. chat_id
	
	if markdown then
		url = url .. '&parse_mode=Markdown'
	end
	
	url = url..'&text='..URL.escape(text)
	
	url = url..'&disable_web_page_preview=true'
	
	url = url..'&reply_markup='..JSON.encode(keyboard)
	
	return sendRequest(url)

end

local function sendChatAction(chat_id, action)
 -- Support actions are typing, upload_photo, record_video, upload_video, record_audio, upload_audio, upload_document, find_location

	local url = BASE_URL .. '/sendChatAction?chat_id=' .. chat_id .. '&action=' .. action
	return sendRequest(url)

end

local function sendLocation(chat_id, latitude, longitude, reply_to_message_id)

	local url = BASE_URL .. '/sendLocation?chat_id=' .. chat_id .. '&latitude=' .. latitude .. '&longitude=' .. longitude

	if reply_to_message_id then
		url = url .. '&reply_to_message_id=' .. reply_to_message_id
	end

	return sendRequest(url)

end

local function forwardMessage(chat_id, from_chat_id, message_id)

	local url = BASE_URL .. '/forwardMessage?chat_id=' .. chat_id .. '&from_chat_id=' .. from_chat_id .. '&message_id=' .. message_id

	return sendRequest(url)
	
end

local function getFile(file_id)
	
	local url = BASE_URL .. '/getFile?file_id='..file_id
	
	return sendRequest(url)
	
end

local function curlRequest(curl_command)
 -- Use at your own risk. Will not check for success.

	io.popen(curl_command)

end

local function sendPhoto(chat_id, photo, caption, reply_to_message_id)

	local url = BASE_URL .. '/sendPhoto'

	local curl_command = 'curl "' .. url .. '" -F "chat_id=' .. chat_id .. '" -F "photo=@' .. photo .. '"'

	if reply_to_message_id then
		curl_command = curl_command .. ' -F "reply_to_message_id=' .. reply_to_message_id .. '"'
	end

	if caption then
		curl_command = curl_command .. ' -F "caption=' .. caption .. '"'
	end

	return curlRequest(curl_command)

end

local function sendDocumentId(chat_id, file_id, reply_to_message_id)
	
	local url = BASE_URL .. '/sendDocument?chat_id=' .. chat_id .. '&document=' .. file_id
	
	if reply_to_message_id then
		url = url..'&reply_to_message_id='..reply_to_message_id
	end

	return sendRequest(url)
	
end

local function sendDocument(chat_id, document, reply_to_message_id)

	local url = BASE_URL .. '/sendDocument'

	local curl_command = 'curl "' .. url .. '" -F "chat_id=' .. chat_id .. '" -F "document=@' .. document .. '"'

	if reply_to_message_id then
		curl_command = curl_command .. ' -F "reply_to_message_id=' .. reply_to_message_id .. '"'
	end

	return curlRequest(curl_command)

end

local function sendSticker(chat_id, sticker, reply_to_message_id)

	local url = BASE_URL .. '/sendSticker'

	local curl_command = 'curl "' .. url .. '" -F "chat_id=' .. chat_id .. '" -F "sticker=@' .. sticker .. '"'

	if reply_to_message_id then
		curl_command = curl_command .. ' -F "reply_to_message_id=' .. reply_to_message_id .. '"'
	end

	return curlRequest(curl_command)

end

local function sendStickerId(chat_id, file_id, reply_to_message_id)
	
	local url = BASE_URL .. '/sendSticker?chat_id=' .. chat_id .. '&sticker=' .. file_id
	
	if reply_to_message_id then
		url = url..'&reply_to_message_id='..reply_to_message_id
	end

	return sendRequest(url)
	
end

local function sendAudio(chat_id, audio, reply_to_message_id, duration, performer, title)

	local url = BASE_URL .. '/sendAudio'

	local curl_command = 'curl "' .. url .. '" -F "chat_id=' .. chat_id .. '" -F "audio=@' .. audio .. '"'

	if reply_to_message_id then
		curl_command = curl_command .. ' -F "reply_to_message_id=' .. reply_to_message_id .. '"'
	end

	if duration then
		curl_command = curl_command .. ' -F "duration=' .. duration .. '"'
	end

	if performer then
		curl_command = curl_command .. ' -F "performer=' .. performer .. '"'
	end

	if title then
		curl_command = curl_command .. ' -F "title=' .. title .. '"'
	end

	return curlRequest(curl_command)

end

local function sendVideo(chat_id, video, reply_to_message_id, duration, performer, title)

	local url = BASE_URL .. '/sendVideo'

	local curl_command = 'curl "' .. url .. '" -F "chat_id=' .. chat_id .. '" -F "video=@' .. video .. '"'

	if reply_to_message_id then
		curl_command = curl_command .. ' -F "reply_to_message_id=' .. reply_to_message_id .. '"'
	end

	if caption then
		curl_command = curl_command .. ' -F "caption=' .. caption .. '"'
	end

	if duration then
		curl_command = curl_command .. ' -F "duration=' .. duration .. '"'
	end

	return curlRequest(curl_command)

end

local function sendVoice(chat_id, voice, reply_to_message_id)

	local url = BASE_URL .. '/sendVoice'

	local curl_command = 'curl "' .. url .. '" -F "chat_id=' .. chat_id .. '" -F "voice=@' .. voice .. '"'

	if reply_to_message_id then
		curl_command = curl_command .. ' -F "reply_to_message_id=' .. reply_to_message_id .. '"'
	end

	if duration then
		curl_command = curl_command .. ' -F "duration=' .. duration .. '"'
	end

	return curlRequest(curl_command)

end

local function sendAdmin(text, markdown)
	return api.sendMessage(config.admin, text, markdown)
end

local function sendLog(text, markdown)
	return api.sendMessage(config.log_chat or config.admin, text, markdown)
end

return {
	sendMessage = sendMessage,
	sendRequest = sendRequest,
	getMe = getMe,
	getUpdates = getUpdates,
	sendVoice = sendVoice,
	sendVideo = sendVideo,
	sendAudio = sendAudio,
	sendSticker = sendSticker,
	sendDocument = sendDocument,
	sendPhoto = sendPhoto,
	curlRequest = curlRequest,
	forwardMessage = forwardMessage,
	sendLocation = sendLocation,
	sendChatAction = sendChatAction,
	unbanChatMember = unbanChatMember,
	kickChatMember = kickChatMember,
	banUser = banUser,
	kickUser = kickUser,
	sendReply = sendReply,
	code2text = code2text,
	sendKeyboard = sendKeyboard,
	editMessageText = editMessageText,
	answerCallbackQuery = answerCallbackQuery,
	unbanUser = unbanUser,
	getCode = getCode,
	sendAdmin = sendAdmin,
	sendLog = sendLog,
	banUserId= banUserId,
	sendDocumentId = sendDocumentId,
	sendStickerId = sendStickerId,
	getFile = getFile
}	
