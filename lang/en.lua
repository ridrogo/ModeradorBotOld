return {
    en = {
        bonus = {
            general_pm = '_I\'ve sent you the message in private_',
            no_user = 'I\'ve never seen this user before.\nIf you want to teach me who he is, forward me a message from him',
            the_group = 'the group',
            mods_list = 'List of the *group\'s moderators*:\n&&&1',
            settings_header = 'Current settings for *the group*:\n\n*Language*: `&&&1`\n',
            reply = '*Reply to someone* to use this command, or write a *username*',
            msg_me = '_Message me first so I can message you_'
        },
        pv = 'This is a command available only in a group',
        not_mod = 'You are *not* a moderator',
        breaks_markdown = 'This text breaks the markdown.\nCheck how many times you used * or _ or `',
        ping= 'Pong!',
        control = {
            reload = 'ℹ️ *Bot reloaded!*',
            stop = 'ℹ️ *Bot stopped!*'
        },
        credits = '',
        extra = {
			usage = 'Write next to /extra the title of the command and the text associated.\nFor example:\n/extra #motm stay positive. The bot will reply _\'Stay positive\'_ each time someone writes #motm',
            new_command = '*New command setted!*\n&&&1\n&&&2',
            no_commands = 'ℹ️ No commands setted!',
            commands_list = 'ℹ️ List of *custom commands*:\n&&&1',
            command_deleted = 'ℹ️ &&&1 command have been deleted',
            command_empty = 'ℹ️ &&&1 command does not exist'
        },
        getstats = {
            redis = 'Redis updated',
        },
        help = {
            owner = '*Commands for the owner*:\n'
                    ..'`/admin` (by reply) : set a new owner\n'
                    ..'`/promote` (by reply|username) : promote as moderator a member\n'
                    ..'`/demote` (by reply|username) : demote a member\n'
                    ..'`/setlink [link|\'no\']` : set the group link, so it can be re-called by mods, or unset it\n'
                    ..'(obviuosly, the ability to appoint moderators is aimed to let users know who are the real moderators in the group, and so who can add and kick people.\nSo it\'s hardly suggested to point as moderator only who really is a moderator)\n\n',
            moderator = '*Commands for moderators*:\n'
                        ..'`/menu` : manage the group settings in private\n'
                        ..'`/kick` (by reply|username) : kick a user from the group (he can be added again)\n'
                        ..'`/ban` (by reply|username) : ban a user from the group\n'
                        ..'`/unban` (by reply|username) : unban a user from the group\n'
                        ..'`/flood [kick/ban]` : choose what the bot should do when the flood limit is triggered\n'
                        ..'`/flood [on/off]` : turn on/off the flood listener\n'
                        ..'`/flood [number]` : set how many messages a user can write in 5 seconds\n'
                        ..'`/setrules <rules>` : set a completly new list of rules\n'
                        ..'`/addrules <rules>` : add at the tile of the existing rules a new set of rules\n'
                        ..'`/setabout <bio>` : set a completly new description for the group\n'
                        ..'`/addabout <bio>` : add at the end of the existing description other relevant informations\n'
                        ..'With this four commands above, you can use asterisks (*bold*), uderscores (_italic_) or the oblique accent (`monospace`) to markup your rules/description.\n'
                        ..'`/media [kick|ban|allow] [type]` : choose the action to perform when the media (type) is sent (the first time, the user will be warned).\n'
                        ..'`/media` : show the status of media settings (via inline keyboard)\n'
                        ..'`/link` : get the group link, if setted\n'
                        ..'`/lang` : see the list of available languages\n'
                        ..'`/lang` [code] : change the language of the bot\n'
                        ..'`/settings` : show the group settings\n'
                        ..'`/warn [kick/ban]` : choose the action to perform once the max number of warnings is reached\n'
                        ..'`/warn` (by reply) : warn an user. At x warns, he will be kicked/banned\n'
                        ..'`/getwarns` (by reply) : see how many times an user have been warned\n'
                        ..'`/nowarns` (by reply) : reset to zero the warns of an user\n'
                        ..'`/warnmax` : set the max number of the warns before be banned/kicked\n'
                        ..'`/extra` [#trigger] [reply] : set a new custom command that will be triggered with #hashtags (markdown supported)\n'
                        ..'`/extra list` : get the list of your custom commands\n'
                        ..'`/extra del` [#trigger] : delete the trigger and its content\n'
                        ..'`/setpoll [link|\'no\']` : save a poll link from @pollbot, so it can be re-called by mods, or unset it\n'
                        ..'`/poll` : get the current poll link\n'
                        ..'`/disable [arab|rtl]` : everyone with RTL character in the name/everyone who send a text with arab characters will be kicked\n'
                        ..'`/enable [arab|rtl]` : allow RTL character/arab texts\n'
                        ..'`/disable <rules|about|modlist|extra>` : this commands will be available only for moderators\n'
                        ..'`/enable <rules|about|modlist|extra>` : this commands will be available for all\n'
                        ..'`/enable|/disable <welcome|report>` : switch on/off the welcome message or the ability to use \'@admin\' shortcut\n'
                        ..'`/report [on/off]` (by reply) : the user won\'t be able/will be able to use \'@admin\' shortcut\n'
                        ..'`/welcome <no|r|a|ra|ma|rm|rma|custom text>` : how the welcome message is composed, or set your own welcome message\n'
                        ..'_custom_ : set your own welcome message (you can use *$username*, *$name*, *&title* (chat title) as placeholders)\n'
                        ..'_no_ : only the simple welcome message\n'
                        ..'_r_ : the welcome message will be integrated with rules\n'
                        ..'_a_ : the welcome message will be integrated with the about text\n'
                        ..'_m_ : the welcome message will be integrated with the moderators list\n'
                        ..'_ra|ar_ : the welcome message will be integrated with rules and bio\n'
                        ..'_ma|am_ : the welcome message will be integrated with about text and moderators list\n'
                        ..'_rm|mr_ : the welcome message will be integrated with rules and moderators list\n'
                        ..'_ram|rma|mar|mra|arm|amr_ : the welcome message will be integrated with rules, about text and moderators list\n\n',
            all = '*Commands for all*:\n'
                    ..'`/dashboard` : see all the group info from private\n'
                    ..'`/rules` (if unlocked) : show the group rules\n'
                    ..'`/about` (if unlocked) : show the group description\n'
                    ..'`/modlist` (if unlocked) : show the moderators of the group\n'
                    ..'`@admin` (if unlocked) : by reply= report the message replied to all the admins; no reply (with text)= send a feedback to all the admins\n'
                    ..'`/tell` : show your basical info or the info about the user you replied to\n'
                    ..'`/info` : show some useful informations about the bot\n'
                    ..'`/c` <feedback> : send a feedback/report a bug/ask a question to my creator. _ANY KIND OF SUGGESTION OR FEATURE REQUEST IS WELCOME_. He will reply ASAP\n'
                    ..'`/help` : show this message.'
		            ..'\n\nIf you like this bot, please leave the vote you think it deserves [here](https://telegram.me/storebot?start=groupbutler_bot)',
		    private = 'Hi *&&&1*!\n'
                    ..'I\'m a simple bot created in order to help people to manage their groups.\n'
                    ..'\n*How can you help you?*\n'
                    ..'Wew, I have a lot of useful tools! You can *kick or ban* users, set rules and a description, warn users, set some parameters to kick someone when something happens (read: *antiflood*/RTL/media...)\nDiscover more by adding me to a group!\n'
                    ..'\nThe user who adds me will be set up as owner of the group. If you are not the real owner, you can set it by repliyng one of his messages with `/admin`.'
                    ..'\nTo use my moderation powers (kick/ban), *you need to add me as administrator of the group*.\nRemember: moderator commands can be used only by who have been promoted with `/promote`. I can\'t see the real admins of the group, this is the only way for now.\n',
            group_success = '_I\'ve sent you the help message in private_',
            group_not_success = '_Please message me first so I can message you_',
            initial = 'Choose the *role* to see the available commands:'
        },
        links = {
            no_link = '*No link* for this group. Ask the owner to generate one',
            link = '[&&&1](&&&2)',
            link_invalid = 'This link is *not valid!*',
            link_updated = 'The link has been updated.\n*Here\'s the new link*: [&&&1](&&&2)',
            link_setted = 'The link has been setted.\n*Here\'s the link*: [&&&1](&&&2)',
            link_usetted = 'Link *unsetted*',
            poll_unsetted = 'Poll *unsetted*',
            poll_updated = 'The poll have been updated.\n*Vote here*: [&&&1](&&&2)',
            poll_setted = 'The link have been setted.\n*Vote here*: [&&&1](&&&2)',
            no_poll = '*No active polls* for this group',
            poll = '*Vote here*: [&&&1](&&&2)'
        },
        luarun = {
            enter_string = 'Please enter a string to load',
            done = 'Done!'
        },
        mod = {
            not_owner = 'You are *not* the owner of this group.',
            reply_promote = 'Reply to someone to promote him',
            reply_demote = 'Reply to someone to demote him',
            reply_owner = 'Reply to someone to set him as owner',
            already_mod = '&&&1 is _already_ a moderator of *&&&2*',
            already_owner = 'You are _already the owner_ of this group',
            not_mod = '&&&1 is _not_ a moderator of *&&&2*',
            promoted = '&&&1 has been _promoted_ as moderator of *&&&2*',
            demoted = '&&&1 has been _demoted_',
            new_owner = '&&&1 is the _new owner_ of *&&&2*',
            modlist = '\nModerators list of *&&&1*:\n&&&2'
        },
        report = {
            no_input = 'Write your suggestions/bugs/doubt near "/c"',
            sent = 'Feedback sent:\n\n&&&1',
            reply = 'Reply to a feedback to reply to the user',
            reply_no_input = 'Write your reply next to "/reply"',
            feedback_reply = '*Hello, this is a reply from the bot owner*:\n&&&1',
            reply_sent = '*Reply sent*:\n\n&&&1',
        },
        service = {
            new_group = 'Hi all!\n*&&&1* added me here to help you to manage this group.\nIf you want to know how I work, please start me in private or type /help  :)',
            welcome = 'Hi &&&1, and welcome to *&&&2*!',
            welcome_rls = 'Total anarchy!',
            welcome_abt = 'No description for this group.',
            welcome_modlist = '\n\n*Moderators list*:\n',
            abt = '\n\n*Description*:\n',
            rls = '\n\n*Rules*:\n',
            bot_removed = '*&&&1* datas have been flushed.\nThanks for having used me!\nI\'m always here if you need an hand ;)'
        },
        setabout = {
            no_bio = '*No description* for this group.',
            bio = '*Description of the group:*\n&&&1',
            no_bio_add = '*No bio for this group*.\nUse /setabout [bio] to set-up a new description',
            no_input_add = 'Please write something next this poor "/addabout"',
            added = '*Description added:*\n"&&&1"',
            no_input_set = 'Please write something next this poor "/setabout"',
            clean = 'The bio has been cleaned.',
            new = '*New bio:*\n"&&&1"'
        },
        setrules = {
            no_rules = '*No rules*!',
            rules = '*Rules of this group:*\n&&&1',
            no_rules_add = '*No rules* for this group.\nUse /setrules [rules] to set-up a new constitution',
            no_input_add = 'Please write something next this poor "/addrules"',
            added = '*Rules added:*\n"&&&1"',
            no_input_set = 'Please write something next this poor "/setrules"',
            clean = 'Rules has been wiped.',
            new = '*New rules:*\n"&&&1"'
        },
        settings = {
            disable = {
                no_input = 'Disable what?',
                rules_already = '`/rules` command is already *locked*',
                rules_locked = '`/rules` command is now available *only for moderators*',
                about_already = '`/about` command is already *locked*',
                about_locked = '`/about` command is now available *only for moderators*',
                welcome_already = 'Welcome message is already *locked*',
                welcome_locked = 'Welcome message *won\'t be displayed* from now',
                modlist_already = '`/modlist` command is already *locked*',
                modlist_locked = '`/modlist` command is now available *only for moderators*',
                flag_already = '`/flag` command is already *not enabled*',
                flag_locked = '`/flag` command *won\'t be available* from now',
                extra_already = '#extra commands are already *locked*',
                extra_locked = '#extra commands are now available *only for moderators*',
                rtl_already = 'Anti-RTL is already *on*',
                rtl_locked = 'Anti-RTL is now *on*',
                flood_already = 'Anti-flood is already *on*',
                flood_locked = 'Anti-flood is now *on*',
                arab_already = 'Anti-arab characters is already *on*',
                arab_locked = 'Anti-arab characters is now *on*',
                report_already = '@admin command is already *not enabled*',
                report_locked = '@admin command *won\'t be available* from now',
                wrong_input = 'Argument unavailable.\nUse `/disable [rules|about|welcome|modlist|report|extra|rtl|arab]` instead',
            },
            enable = {
                no_input = 'Enable what?',
                rules_already = '`/rules` command is already *unlocked*',
                rules_unlocked = '`/rules` command is now available *for all*',
                about_already = '`/about` command is already *unlocked*',
                about_unlocked = '`/about` command is now available *for all*',
                welcome_already = 'Welcome message is already *unlocked*',
                welcome_unlocked = 'Welcome message from now will be displayed',
                modlist_already = '`/modlist` command is already *unlocked*',
                modlist_unlocked = '`/modlist` command is now available *for all*',
                flag_already = '`/flag` command is already *available*',
                flag_unlocked = '`/flag` command is now *available*',
                extra_already = 'Extra # commands are already *unlocked*',
                extra_unlocked = 'Extra # commands are now available *for all*',
                rtl_already = 'Anti-RTL is already *off*',
                rtl_unlocked = 'Anti-RTL is now *off*',
                flood_already = 'Anti-flood is already *off*',
                flood_unlocked = 'Anti-flood is now *off*',
                arab_already = 'Anti-arab characters is already *off*',
                arab_unlocked = 'Anti-arab characters is now *off*',
                report_already = '@admin command is already *available*',
                report_unlocked = '@admin command is now *available*',
                wrong_input = 'Argument unavailable.\nUse `/enable [rules|about|welcome|modlist|report|extra|rtl|arab]` instead'
            },
            welcome = {
                no_input = 'Welcome and...?',
                a = 'New settings for the welcome message:\nRules\n*About*\nModerators list',
                r = 'New settings for the welcome message:\n*Rules*\nAbout\nModerators list',
                m = 'New settings for the welcome message:\nRules\nAbout\n*Moderators list*',
                ra = 'New settings for the welcome message:\n*Rules*\n*About*\nModerators list',
                rm = 'New settings for the welcome message:\n*Rules*\nAbout\n*Moderators list*',
                am = 'New settings for the welcome message:\nRules\n*About*\n*Moderators list*',
                ram = 'New settings for the welcome message:\n*Rules*\n*About*\n*Moderators list*',
                no = 'New settings for the welcome message:\nRules\nAbout\nModerators list',
                wrong_input = 'Argument unavailable.\nUse _/welcome [no|r|a|ra|ar]_ instead',
                custom = '*Custom welcome message* setted!\n\n&&&1',
                wrong_markdown = '_Not setted_ : I can\'t send you back this message, probably the markdown is *wrong*.\nPlease check the text sent',
            },
            resume = {
                header = 'Current settings for *&&&1*:\n\n*Language*: `&&&2`\n',
                w_a = '*Welcome type*: `welcome + about`\n',
                w_r = '*Welcome type*: `welcome + rules`\n',
                w_m = '*Welcome type*: `welcome + modlist`\n',
                w_ra = '*Welcome type*: `welcome + rules + about`\n',
                w_rm = '*Welcome type*: `welcome + rules + modlist`\n',
                w_am = '*Welcome type*: `welcome + about + modlist`\n',
                w_ram = '*Welcome type*: `welcome + rules + about + modlist`\n',
                w_no = '*Welcome type*: `welcome only`\n',
                flood_info = '_Flood sensitivity:_ *&&&1* (_action:_ *&&&2*)\n'
            },
            Rules = 'Rules',
            About = 'About',
            Welcome = 'Welcome message',
            Modlist = 'Modlist',
            Flag = 'Flag',
            Extra = 'Extra',
            Flood = 'Flood',
            Rtl = 'Rtl',
            Arab = 'Arab',
            Report = 'Report'
        },
        shell = {
            no_input = 'Please specify a command to run.',
            done = 'Done!',
            output = '```\n&&&1\n```'
        },
        tell = {
            first_name = '*First name*: &&&1\n',
            last_name = '*Last name*: &&&1\n',
            group_name = '\n*Group name*: &&&1\n',
            group_id = '*Group ID*: &&&1'
        },
        warn = {
            warn_reply = 'Reply to a message to warn the user',
            changed_type = 'New action on max number of warns received: *&&&1*',
            mod = 'A moderator can\'t be warned',
            warned_max_kick = 'User &&&1 *kicked*: reached the max number of warnings',
            warned_max_ban = 'User &&&1 *banned*: reached the max number of warnings',
            warned = '*User* &&&1 *have been warned.*\n_Number of warnings_   *&&&2*\n_Max allowed_   *&&&3* (*-&&&4*)',
            warnmax = 'Max number of warnings changed.\n*Old* value: &&&1\n*New* max: &&&2',
            getwarns_reply = 'Reply to an user to check his numebr of warns',
            limit_reached = 'This user has already reached the max number of warnings (*&&&1/&&&2*)',
            limit_lower = 'This user is under the max number of warnings.\n*&&&1* warnings missing on a total of *&&&2* (*&&&3/&&&4*)',
            nowarn_reply = 'Reply to an user to delete his warns',
            nowarn = 'The number of warns received by this user have been *resetted*'
        },
        setlang = {
            list = '*List of available languages:*\n\n&&&1\nUse `/lang xx` to change you language',
            error = 'The language setted is *not supported*. Use `/lang` to see the list of the available languages',
            success = '*New language setted:* &&&1'
        },
		banhammer = {
            kicked_header = 'List of kicked users:\n\n',
            kicked_empty = 'The list of kicked users is empty',
            kicked = '&&&1 have been kicked! (but is still able to join)',
            banned = '&&&1 have been banned!',
            already_banned_normal = '&&&1 is *already banned*!',
            unbanned = '&&&1 have been unbanned!',
            reply = 'Reply to someone',
            globally_banned = '&&&1 have been globally banned!',
            not_banned = 'The user is not banned'
        },
        floodmanager = {
            number_invalid = '`&&&1` is not a valid value!\nThe value should be *higher* than `3` and *lower* then `26`',
            not_changed = 'The max number of messages that can be sent in 5 seconds is already &&&1',
            changed = 'The *max number* of messages that can be sent in *5 seconds* changed _from_  &&&1 _to_  &&&2',
            enabled = 'Antiflood enabled',
            disabled = 'Antiflood disabled',
            kick = 'Now flooders will be kicked',
            ban = 'Now flooders will be banned',
        },
        mediasettings = {
			warn = 'This kind of media are *not allowed* in this group.\n_The next time_ you will be kicked or banned',
            list_header = '*Here the list of the media you can block*:\n\n',
            settings_header = '*Current settings for media*:\n\n',
            already = 'The status for the media (`&&&1`) is already (`&&&2`)',
            changed = 'New status for (`&&&1`) = *&&&2*',
            wrong_input = 'Wrong input. Use `/media list` to see the available media',
        },
        preprocess = {
            flood_ban = 'ℹ️ &&&1 *banned* for flood',
            flood_kick = 'ℹ️ &&&1 *kicked* for flood',
            media_kick = 'ℹ️ &&&1 *kicked*: media sent not allowed',
            media_ban = 'ℹ️ &&&1 *banned*: media sent not allowed',
            rtl = 'ℹ️ &&&1 *kicked*: rtl character in names/messages not allowed',
            arab = 'ℹ️ &&&1 *kicked*: arab message detected',
            first_warn = 'ℹ️ This type of media is *not allowed* in this chat. The next time, *&&&1*'
        },
        broadcast = {
            delivered = 'Broadcast delivered. Check the log for the list of reached ids',
            no_users = 'No users saved, no broadcast',
        },
        admin = {
            no_reply = 'ℹ️ This command need a reply',
            blocked = 'ℹ️ The ID &&&1 have been blocked',
            unblocked = 'ℹ️ The ID &&&1 have been unblocked',
            already_blocked = 'ℹ️ The ID &&&1 was already blocked',
            already_unblocked = 'The ID &&&1 was already unblocked',
            bcg_no_groups = 'No (groups) id saved',
            leave_id_missing = 'ℹ️ ID missing',
            leave_chat_leaved = 'ℹ️ Chat leaved.',
            leave_error = 'ℹ️ Check the id, it could be wrong'
            
        },
        kick_errors = {
            [101] = 'ℹ️ I\'m not an admin, I can\'t kick people',
            [102] = 'ℹ️ I can\'t kick or ban an admin',
            [103] = 'ℹ️ There is no need to unban in a normal group',
            [104] = 'ℹ️ I can\'t kick or ban an admin', --yes, I need two
            [105] = 'ℹ️ I\'m not an admin, I can\'t kick people',
            [106] = 'ℹ️ This user is not a chat member',
            [107] = 'ℹ️ An unknown error occurred while kicking',
        },
        flag = {
            no_input = 'ℹ️ Reply to a message to report it to an admin, or write something next \'@admin\' to send a feedback to them',
            reported = 'ℹ️ Reported!',
            no_reply = 'ℹ️ Reply to an user!',
            blocked = 'ℹ️ The user from now can\'t use \'@admin\'',
            already_blocked = 'ℹ️ The user is already unable to use \'@admin\'',
            unblocked = 'ℹ️ The user now can use \'@admin\'',
            already_unblocked = 'ℹ️ The user is already able to use \'@admin\'',
        },
        all = {
            dashboard = 'ℹ️ I\'ve sent you the resume dashboard in private',
            menu = 'ℹ️ I\'ve sent you the settings menu in private',
            dashboard_first = 'ℹ️ Navigate this message to see *all the info* about this group!',
            menu_first = 'ℹ️ Tap on a lock to *change the group settings*, or use the last row to _manage the anti-flood behaviour_',
            media_first = 'ℹ️ Tap on a voice in the right colon to *change the setting*'
            
        },
    },
}
