local action = function(msg, blocks)
if blocks[1] == 'kickme' then
	res = api.kickChatMember
	api.kickChatMember(msg.chat.id, msg.from.id)
	     if res then
	     api.sendMessage(msg.chat.id, "Expulsado")
	     end
		 if not res then
		    api.sendReply(msg, make_text(lang[ln].kick_errors[1]), true)
		     end
	    	end
	    	end

return {
   action = action,
   triggers = {
            "^/kickme$"
         }
     }
