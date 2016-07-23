return {
    es = {
    
    admin = {
    	    reload = 'ℹ️ *Bot recargado*',
    	    stop = 'ℹ️ *Bot detenido*',
    	    broadcast = 'ℹ️ ¡*Broadcast enviado*!'
    	    },   	    
    
    keyboard = {
    		role_keyboard = 'Selecciona el *rango* para ver sus comandos disponibles.'
    		},
    		
    bonus = {
    	    general_pm = '_Te enviaré la información por privado_.',
            no_user = 'Nunca vi a ese usuario :( , por favor, respondele',
            the_group = 'el grupo',
            settings_header = 'Ajustes del *grupo*:\n\n*Lenguaje*: `&&&1`\n',
            reply = '*Contestale a alguien* para usar este comando, o un *usuario*',
            msg_me = '_Mensajeame primero mara ayudarte_'
        },

        pv = 'ℹ️ Este comando sólo está disponible en grupos',
        not_mod = '🚫 Para realizar o usar ésta acción requieres *permisos de desarrollador o moderador*.',
        breaks_markdown = 'ℹ️ Este texto rompe las reglas del código, *verificalo*.',
        ping= 'ℹ️ Bot funcionando.',
        credits = 'ℹ️ Este bot esta basado en código Lua si encuentras cualquier falla comunicamelo en mi [Telegram](http://telegram.me/Webrom) o bien, en el grupo de soporte de [Bot Moderador](http://telegram.me/mod_bot_webrom).',
        extra = {
			usage = 'Escribe despues de /extra algún titulo de comando que sea asociado al activar.\n*Por ejemplo*:\n/extra #baile vamos a bailar. Quicksilver responderá _\'vamos a bailar.\'_ cuando alguien escriba #baile',
            new_command = '🆕 *¡Nuevo comando agregado!*\n&&&1\n&&&2',
            no_commands = 'ℹ️ No hay comandos programados.',
            commands_list = 'ℹ️ Lista de *comandos personalizados*:\n&&&1',
            command_deleted = '&&&1 el comando ha sido borrado.',
            command_empty = '&&&1 éste comando no existe.'
        },
        help = {
            owner = '*Comandos para el propietario*:\n'
                    ..'`/admin` (por respuesta) : crea un nuevo administrador.\n'
                    ..'`/promote` (por respuesta) : promueve a un usuario en moderador.\n'
                    ..'`/demote` (por respuesta) : elimina un usuario de los propietarios o moderadores.\n'
                    ..'`/setlink [link]` : cambia el link de algún grupo.\n',
            mods = {
             banhammer = "*Moderadores*: Baneos\n\n"
                	.."`/kick` (respuesta|alias) : kickea a un usuariode algún grupo (no podrá ser agregado de nuevo).\n"
                	.."`/ban` (respuesta|alias) : banea a un usuario desde el grupo.\n"
                	.."`/unban` (respuesta|alias) : desbanea a un usuario desde el grupo.",
 		     info = "*Moderadores*: Información acerca del grupo\n\n"
 		            .."`/setrules <reglas>` : cambia las reglas del grupo\n"
 		            .."`/addrules <regla>` : agrega sólo una linea a las reglas anteriormente creadas\n"
 		            .."`/setabout <descripción>` : cambia la descripción del grupo.\n"
 		            .."`/addabout <descripción>` : agrega sólo una línea a la descripción anteriormente creada.",
 		     flood = "*Moderadores*: Ajustes del flood\n\n"
                	.."`/flood [on/off]` : apaga o activa el detector de flood.\n"
                	.."`/flood [numero]` : cambia el máximo numero de flood (mensajes máximos).\n"
                	.."`/flood [kick/ban]` : elige si deseas que el usuario sea baneado o expulsado por flood.\n"
                	.."\n*Nota:* el número máximo debe ser arriba de 3 y puedes ver los ajustes en teclado con `/menu`.",
             media = "*Moderadores*: Ajustes de multimedia\n\n"
                    .."`/media` : Envia en PV un teclado para configurar los ajustes de multimedia.\n"
                	.."`/media [kick|ban|allow] [tipo]` : cambia la acción si ponen imagenes audios, etc.\n"
                	.."_Ejemplo_ : `/media kick sticker`.\n"
                	.."`/media list` = muestra los ajustes que pueden ser aplicados en la multimedia.\n"
                	.."\n*Multimedia soportada*: _imagenes, audios, videos, stickers, gifs, voz, contactos, archivos_\n"
                	.."\n*Nota*: la primera vez que sea enviada multimedia no permitida enviará una advertencia, la segunda, la acción establecida.",
             welcome = "*Moderadores*: Configuraciones del welcome\n\n"
                	.."`/enable welcome` = activa el mensaje de bienvenida cuando un usuario nuevo entre.\n"
                	.."`/disable welcome` = ocultará el mensaje de bienvenida.\n"
                	.."\n*Mensaje personalizado:*\n"
                	.."`/welcome Bienvenido $name, al grupo $group`\n"
                	.."Despúes de \"/welcome\" escribe tu mensaje personalizado. puede incluir nombre/alias/id\n"
                	.."Patrones: _$username_ (será reemplazado por el alias); _$name_ (será reemplazado por el nombre); _$id_ (será reemplazado por el id); _$group_ (será reemplazado por el nombre del grupo).\n"
                    .."\n*GIF/sticker como bienvenida*\n"
                    .."Puedes usar un gif/sticker como bienvenida. Solamente responde el gif/sticker con \'/welcome\'\n"
                    .."\n*Mensaje de bienvenida compuesto*\n"
                    .."Puedes componer un mensaje de bienvenida con reglas/lista de mods/descripción.\n"
                    .."Puedes componerlo con `/welcome` y a continuación los códigos de mensaje.\n"
                    .."_Códigos_ : *r* = reglas; *a* = descripción (about); *m* = lista de moderadores.\n"
                    .."Ejemplo, con \"`/welcome rm`\", el mensaje incluirá reglas y lista de moderadores",
             extra = "*Moderadores*: Comandos extra\n\n"
                    .."`/extra [#comando] [respuesta]` = el bot enviará una respuesta cuando se escriba el comando previo.\n"
                    .."_Ejemplo_ : con \"`/extra #hola Buen día!`\", el bot responderá \"Buen día!\" cuando alguien escriba #hola.\n"
                    .."`/extra list` = muestra los comandos personalizados.\n"
                    .."`/extra del [#comando]` = elimina el comando escrito.\n",
             warns = "*Moderadores*: Advertencias\n\n"
                    .."`/warn [kick/ban]` : cambia la acción si el usuario excede el número máximo de advertencias.\n"
                    .."`/warn` (por respuesta) : genera una advertencia al usuario.\n"
                    .."`/warnmax` : cambia el numero máximo de advertencias antes de que el usuario sea baneado o expulsado.\n"
                    .."`/getwarns` (por respuesta) : muestra cuantas veces ha sido advertido el usuario.\n"
                    .."`/nowarns` (por respuesta) : limpia las advertencias de un usuario.\n",
             char = "*Moderadores*: Caracteres especiales\n\n"
                    .."`/disable rtl` = cualquiera con caracteres RTL en el nombre será expulsado. Además, será aplicado también en los mensajes.\n"
                    .."`/enable rtl` = cualquiera con caracteres RTL en el nombre o mensajes, ya no será expulsado.\n"
                    .."`/disable arab` = el bot expulsará a cualquiera que escriba mensajes en árabe.\n"
                    .."`/enable arab` = el bot ya no expulsará a cualquiera que escriba mensajes en árabe.\n",
             links = "*Moderadores*: Links\n\n"
                    .."`/link` : obtiene el link del grupo, si está puesto, obvio.\n"
                    .."`/setpoll [link de pollbot]` = guarda el link de una encuesta de @pollbot. Una vez configurada, los moderadores podrán recibirla con `/poll`.\n"
                    .."`/setpoll no` = borra la encuesta configurada previamente.\n"
                    .."`/poll` = obtiene el link de la encuesta, si está configurada.\n"
                    .."\n*Nota*: el bot solamente reconocerá links/polls válidos. Si el link no es válido, no arrojará una respuesta.",
             lang = "*Moderadores*: Lenguajes\n\n"
                    .."`/lang` = muestra una lista de los lenguajes disponibles.\n"
                    .."`/lang [es]` = cambia el lenguaje del bot. Disponible por ahora solamente español.\n",
             settings = "*Moderadores*: Configuraciones de grupos\n\n"
                    .."`/menu` = maneja los ajustes del grupo con un teclado inline.\n"
                    .."`/disable [rules|about|modlist|extra]` = hará que el comando seleccionado esté disponible *solamente para moderadores* (el bot no le responderá a usuarios normales).\n"
                    .."_Ejemplo_ : con \"`/disable extra`\", los comandos extra estarán disponibles *solamente para moderadores*. Puedes terminar también con _rules, about, modlist_.\n"
                    .."`/enable [rules|about|modlist|extra]` = hará que el comando seleccionado esté disponible *para todos* (no solamente para moderadores).\n"
                    .."`/enable report` = los usuarios podrán reportar a los moderadores cuando esté activo, usando el comando \"@admin\".\n"
                    .."`/disable report` = los usuarios no podrán reportar a los moderadores usando @admin (predeterminado).\n"
                    .."`/report on` (por respuesta) = al usuario que le respondas podrá usar el comando @admin (solamente al usuario respondido)"
                    .."`/report off` (por respuesta) = al usuario que le respondas ya no podrá usar el comando @admin (solamente al usuario respondido)",
                    },       
            all = '*Comandos para todos*:\n'
                    ..'`/dashboard` : genera toda la información del grupo por privado\n'
                    ..'`/rules` (si están puestas) : muestra las reglas del grupo.\n'
                    ..'`/about` (si está puesta) : muestra la descripción del grupo.\n'
                    ..'`/modlist` (si hay lista) : muestra la lista de moderadores en el grupo.\n'
                    ..'`@admin` (si está activo y por respuesta) reporta el mensaje a los administradores. ; sin respuesta pero con mensaje despúes, envia una recomendación a todos los administradores.\n'
                    ..'`/tell` : el bot te responderá con información básica tuya, si reenvias un mensaje contesta con ID.\n'
                    ..'`/echo ó /say [texto]` : el bot repetirá el mensaje ingresado.\n'
                    ..'`/info` : muestra la información del bot.\n'
                    ..'`/c` <feedback> : envía un feedback al administrador del bot, podrías reportar un error si lo encuentras.\n'
                    ..'`/help` : muestra éste mensaje.',
		    private = '¡Hola *&&&1*!\n'
                   ..'Soy Webrom Moderador Bot, un _bot moderador_ para tus grupos.\n'
                   ..'\n*¿Como puedo ayudarte?*\n'
                   ..'\nPuedo banear, expulsar, advertir a cualquier usuario que tú desees.\n'
                   ..'Solo necesito que me des administración y mi trabajo empieza!\n'
                   ..'\nSi deseas usarlo, por favor consulta a mi dueño [Webrom](http://telegram.me/Webrom2) ó para configurar tu grupo.\n',
                 --..'\n_Por favor, regalános tu puntuación_ [aquí](https://telegram.me/storebot?start=moderadores_bot)'
            group_success = 'ℹ️ Te he enviado un mensaje por privado, *verificalo*.',
            group_not_success = '_Mensajeame para ayudarte_',
            initial = 'Cambia su *permiso* para ver los comandos:',
            kb_header = 'Presiona un botón para ver los comandos *relacionados*'
        },
        links = {
            no_link = 'ℹ️ *No hay link* en este grupo, por favor, pideselo al creador.',
            link_no_input = 'ℹ️ Este grupo *no es público*, necesitas configurarlo con /setlink',
            link = '[&&&1](&&&2)',
            link_invalid = 'ℹ️ Este link, *no es valido!*',
            link_updated = 'ℹ️ Link actualizado \n*Este es el link*: [&&&1](&&&2)',
            link_setted = 'ℹ️ Link configurado.\n*Este es el link*: [&&&1](&&&2)',
            link_unsetted = '*Primero configura el link*',
            poll_unsetted = '*Primero crea una encuesta en pollbot*',
            poll_updated = 'ℹ️ Encuesta actualizada.\n*Vota aqui*: [&&&1](&&&2)',
            poll_setted = 'ℹ️ Encuesta configurada.\n*Vota aqui*: [&&&1](&&&2)',
            no_poll = 'ℹ️ *No hay encuestas de Pullbot* en este grupo',
            poll = '*Vota aqui*: [&&&1](&&&2)'
        },
        mod = {
            not_owner = '🚫 Para realizar esta opción requieres permisos de desarrollador.',
            reply_promote = 'ℹ️ Respondele a alguien para promoverlo.',
            reply_demote = 'ℹ️ Respondele a alguien para removerlo de la lista de admins/mods.',
            reply_owner = 'ℹ️ Respondele a alguien para promoverlo a administrador.',
            already_mod = 'ℹ️ *&&&1* ya es moderador de *&&&2*',
            already_owner = 'ℹ️ Este usuario ya es *administrador* en este grupo.',
            not_mod = 'ℹ️ *&&&1* no es moderador de *&&&2*',
            promoted = '🆙 *&&&1* ha sido promovido en *&&&2*',
            demoted = 'ℹ️ *&&&1* ha perdido sus privilegios.',
            new_owner = '🆙 *&&&1* es nuevo administrador en *&&&2*.',
            modlist = '*Admins*:\n&&&1'
        },
        report = {
            no_input = 'Enviame tus comentarios a mi [Telegram](http://telegram.me/Webrom)',
            sent = '*¡Feedback enviado!*',
            reply = 'Genera un Feedback respondiendo a un usuario.',
            reply_no_input = 'Escribe tu respuesta despúes de "/reply"',
            feedback_reply = '*Hola, esta es una respuesta desde el bot.*:\n&&&1',
            reply_sent = '*Respuesta enviada*:\n\n&&&1',
        },
        service = {
            new_group = '¡Hola a todos! \n*&&&1*, gracias por agregarme :)\nHe sido agregado a este grupo para ayudarles a cuidarlo. *¡Vamos a ello!*  :)',
            welcome = 'Hola &&&1, bienvenido a *&&&2*!',
            welcome_rls = '¡*No hay reglas*!',
            welcome_abt = 'No hay descripción en éste grupo.',
            welcome_modlist = '\n\n*Lista de moderadores*:\n',
            abt = '\n\n*Descripción*:\n',
            rls = '\n\n*Reglas*:\n',
            bot_removed = '*&&&1* datos removidos.\nGracias por usarme!\n algun dia volveremos a vernos.'
        },
        setabout = {
            no_bio = '*No hay descripción* en este grupo.',
            no_bio_add = '*No hay descripción*.\nUsa `/setabout [descripción] para crear una nueva',
            no_input_add = 'Escribe algo despúes de "/addabout"',
            added = '*Descripción agregada:*\n"&&&1"',
            no_input_set = 'Escribe algo despúes de "/setabout"',
            clean = 'Descripción limpiada.',
            new = '*Nueva descripción:*\n"&&&1"'
        },
        setrules = {
            no_rules = '¡*No hay reglas*!',
            no_rules_add = '*No hay reglas* establecidas en este grupo\nUsa /setrules [reglas] para establecer unas nuevas.',
            no_input_add = 'Escribe algo despúes de "/addrules"',
            added = '*Reglas agregadas:*\n"&&&1"',
            no_input_set = 'Por favor *escribe algo* despúes de "/setrules"',
            clean = 'Reglas limpiadas.',
            new = '*Nuevas reglas:*\n"&&&1"'
        },
        settings = {
            disable = {
                no_input = '*¿Desactivar qué?*',
                rules_already = 'ℹ️ El comando `/rules` ya estaba disponible sólo para *moderadores*.',
                rules_locked = 'ℹ️ El comando `/rules` ahora estará disponible sólo para *moderadores*.',
                about_already = 'ℹ️ EL comando `/about` ya estaba disponible sólo para *moderadores*.',
                about_locked = 'ℹ️ EL comando `/about` ahora estará disponible sólo para *moderadores*.',
                welcome_already = 'ℹ️ EL mensaje de bienvenida ya estaba *oculto*.',
                welcome_locked = 'ℹ️ El mensaje de bienvenida ahora estará *oculto*.',
                modlist_already = 'ℹ️ El comando `/modlist` ya estaba disponible sólo para *moderadores*.',
                modlist_locked = 'ℹ️ El comando `/modlist` ahora estará disponible sólo para *moderadores*.',
                flag_already = 'ℹ️ El comando `/flag` ya estaba disponible sólo para *moderadores*.',
                flag_locked = 'ℹ️ El comando `/flag` ahora estará disponible sólo para *moderadores*.',
                extra_already = 'ℹ️ El comando #extra ya estaba disponible sólo para *moderadores*.',
                extra_locked = 'ℹ️ El comando #extra ahora estará disponible sólo para *moderadores*.',
                rtl_already = 'ℹ️ El RTL ya *no estaba permitido*.',
                rtl_locked = 'ℹ️ El RTL ahora *no estará permitido*.',
                flood_already = 'ℹ️ El anti-flood ya *estaba activado*.',
                flood_locked = 'ℹ️ El anti-flood ahora *estará activado*.',
                arab_already = 'ℹ️ El árabe ya *no estaba permitido*.',
                arab_locked = 'ℹ️ El árabe ahora *no estará permitido*',
                report_already = 'ℹ️ El comando @admin ya *no estaba permitido*.',
                report_locked = 'ℹ️ El comando @admin ahora *no estará permitido*.',
                wrong_input = 'ℹ️ Argumento no disponible.\nUsa `/disable [rules|about|welcome|modlist|report|extra|rtl|arab]` para *desactivar* algo.',
            },
            enable = {
                no_input = '¿Activar qué?',
                rules_already = 'ℹ️ El comando `/rules` ya estaba disponible para *todos*.',
                rules_unlocked = 'ℹ️ El comando `/rules` ahora estará disponible para *todos*.',
                about_already = 'ℹ️ El comando `/about` ya estaba disponible para *todos*.',
                about_unlocked = 'ℹ️ El comando `/about` ahora estará disponible para *todos*.',
                welcome_already = 'ℹ️ EL mensaje de bienvenida ya estaba *visible*.',
                welcome_unlocked = 'ℹ️ El mensaje de bienvenida ahora estará *visible*.',
                modlist_already = 'ℹ️ El comando `/modlist` ya estaba disponible para *todos*.',
                modlist_unlocked = 'ℹ️ El comando `/modlist` ahora estará disponible para *todos*.',
                flag_already = 'ℹ️ El comando `/flag` ya estaba disponible para *todos*.',
                flag_unlocked = 'ℹ️ El comando `/flag` ahora estará disponible para *todos*.',
                extra_already = 'ℹ️ El comando #extra ya estaba disponible para *todos*.',
                extra_unlocked = 'ℹ️ El comando #extra ahora estará disponible para *todos*.',
                rtl_already = 'ℹ️ El RTL ya *estaba permitido*.*.',
                rtl_unlocked = 'ℹ️ El RTL ahora *estará permitido*.',
                flood_already = 'ℹ️ El anti-flood ya *estaba desactivado*.',
                flood_unlocked = 'ℹ️ El anti-flood ahora *estará desactivado*.',
                arab_already = 'ℹ️ El árabe ya *estaba permitido*.',
                arab_unlocked = 'ℹ️ El árabe ahora *estará permitido*.',
                report_already = 'ℹ️ El comando @admin ya *estaba permitido*.',
                report_unlocked = 'ℹ️ El comando @admin ahora *está permitido*.',
                wrong_input = 'ℹ️ Argumento no disponible.\nUsa `/enable [rules|about|welcome|modlist|report|extra|rtl|arab]` para *activar* algo.'
            },
            welcome = {
                no_input = 'Welcome y...?',
                media_setted = 'ℹ️ Nueva multimedia configurada en el mensaje de bienvenida: ',
                reply_media = 'ℹ️ Respóndele a un `sticker` ó a un `gif` para configurarlo en el mensaje de bienvenida.',
                a = 'ℹ️ *Ahora el mensaje de bienvenida tendrá*:\n\n_Descripción_',
                r = 'ℹ️ *Ahora el mensaje de bienvenida tendrá*:\n\n_Reglas_',
                m = 'ℹ️ *Ahora el mensaje de bienvenida tendrá*:\n\n_Lista de moderadores_',
                ra = 'ℹ️ *Ahora el mensaje de bienvenida tendrá*:\n\n_Reglas_\n_Descripción_',
                rm = 'ℹ️ *Ahora el mensaje de bienvenida tendrá*:\n\n_Reglas_\n_Lista de moderadores_',
                am = 'ℹ️ *Ahora el mensaje de bienvenida tendrá*:\n\n_Descripción_\n_Lista de moderadores_',
                ram = 'ℹ️ *Ahora el mensaje de bienvenida tendrá*:\n\n_Reglas_\n_Descripción_\n_Lista de moderadores_',
                no = 'ℹ️ *Ahora se mostrará solamente la bienvenida*.',
                wrong_input = 'ℹ️ Argumento no disponible.\nUsa _/welcome [no|r|a|ra|ar]_ para generar una configuración.',
                custom = 'ℹ️ *Mensaje personalizado* configurado\n\n&&&1',
                wrong_markdown = '_No hay configuración_ : Seguramente, estás marcando *mal* el texto, verifica el texto enviado.',
                
            },
            resume = {
                header = '⚙ Configuraciones actuales de *&&&1*:\n\n*Lenguaje*: `&&&2`\n',
                w_a = '*Tipo de bienvenida*: `bienvenida + descripción`\n',
                w_r = '*Tipo de bienvenida*: `bienvenida + reglas`\n',
                w_m = '*Tipo de bienvenida*: `bienbenida + lista de moderadores`\n',
                w_ra = '*Tipo de bienvenida*: `bienvenida + reglas + descripción`\n',
                w_rm = '*Tipo de bienvenida*: `bienvenida + reglas + lista de moderadores`\n',
                w_am = '*Tipo de bienvenida*: `bienvenida + descrición + lista de moderadores`\n',
                w_ram = '*Tipo de bienvenida*: `bienvenida + reglas + descripción + lista de moderadores`\n',
                w_no = '*Tipo de bienvenida*: `solamente bienvenida`\n',
                w_media = '*Tipo de bienvenida*: `gif/sticker`\n',
                w_custom = '*Tipo de bienvenida*: `mensaje personalizado`\n',
                flood_info = '_Sensibilidad del flood:_ *&&&1* (_acción:_ *&&&2*)\n'
            },
            Rules = 'Reglas',
            About = 'Descripción',
            Welcome = 'Mensaje de bienvenida',
            Modlist = 'Lista de moderadores',
            Flag = 'Banderas',
            Extra = 'Extra',
            Flood = 'Anti-flood',
            Rtl = 'Rtl',
            Arab = 'Árabe',
            Report = 'Reportes'
        },
        tell = {
            first_name = '*Primer nombre*: &&&1\n',
            last_name = '*Apellido*: &&&1\n',
            group_name = '\n*Nombre de grupo*: &&&1\n',
            group_id = '*ID del grupo*: &&&1',
        },
        warn = {
            warn_reply = 'ℹ️ *Contesta a un usuario para darle una advertencia.*',
            changed_type = 'ℹ️ Nueva acción si se supera el número máximo de advertencias: *&&&1*',
            mod = 'ℹ️ Un moderador NO puede ser advertido. Pidele a un creador que le quite sus poderes mágicos.',
            warned_max_kick = 'ℹ️ Usuario &&&1 *expulsado*: número máximo de advertencias alcanzado.',
            warned_max_ban = 'ℹ️ Usuario &&&1 *baneado*: número máximo de advertencias alcanzado.',
            warned = '*Usuario* &&&1 *advertido.*\n_Número de advertencias_   *&&&2*\n_Máximas permitidas_   *&&&3* (*-&&&4*)',
            warnmax = 'ℹ️ _Número máximo de advertencias cambiadas_.\n*Anterior*: &&&1\n*Nuevo*: &&&2',
            getwarns_reply = 'ℹ️ Contestale con éste comando a un usuario para *ver* el número de sus advertencias.',
            limit_reached = 'ℹ️ Este usuario ya ha alcanzado el número máximo de advertencias (*&&&1/&&&2*)',
            limit_lower = 'ℹ️ Este usuario está bajo en el número de advertencias.\n*&&&1* advertencias limpias en un total de *&&&2* (*&&&3/&&&4*)',
            nowarn_reply = 'ℹ️ Contestale a un usuario para eliminar sus advertencias',
            nowarn = 'ℹ️ El número de advertencias de éste usuario, ha sido *reseteado*.'
        },
        setlang = {
            list = '*Lenguajes disponibles:*\n\n&&&1',
            error = 'Lenguaje *no soportado*. Usa `/lang` para ver la lista de lenguajes',
            success = '*Nuevo lenguaje seleccionado* &&&1'
        },
	banhammer = {
            kicked_header = '_Lista de usuarios expulsados_:\n\n',
            kicked_empty = 'ℹ️ *La lista de usuario expulsados está limpia*',
            kicked = 'ℹ️ &&&1 *ha sido expulsado. (pero aún podra unirse a éste grupo)*',
            banned = 'ℹ️ &&&1 *ha sido baneado.*',
            already_banned_normal = 'ℹ️ &&&1 ya *está baneado*',
            unbanned = 'ℹ️ &&&1 *ha sido desbaneado.*',
            reply = 'ℹ️ Contestale a alguien',
            globally_banned = 'ℹ️ &&&1 *ha sido globalmente baneado.*',
            not_banned = 'ℹ️ Este usuario no está baneado'
        },
        floodmanager = {
            number_invalid = '`&&&1` no es un valor válido!\n El valor debe ser *arriba* de `3` y *abajo* de `26`',
            not_changed = 'ℹ️ El número máximo es  5 segundos es el predeterminado &&&1',
            changed = 'ℹ️ El número máximo cambió de &&&1 a &&&2',
            enabled = 'ℹ️ Antiflood activado.',
            disabled = 'ℹ️ Antiflood desactivado.',
            kick = 'ℹ️ Ahora los flooders serán expulsados',
            ban = 'ℹ️ Ahora los flooders serán baneados.',
        },
        mediasettings = {
        	warn = 'Éste tipo de multimedia *no está permitida* en este grupo.\n_La próxima vez_ serás expulsado o baneado.',
            list_header = 'ℹ️ *Aquí una lista de la multimedia que puede ser bloquada*:\n\n',
            settings_header = '*Configuración actual de la multimedia*:\n\n',
            already = 'ℹ️ Nueva configuración para (`&&&1`) ahora dará *&&&2*.',
            changed = 'ℹ️ Nueva configuración para (`&&&1`) ahora dará *&&&2*.',
            wrong_input = 'ℹ️ Entrada invalida, escribe `/media list` para ver lo que se puede bloquear. ',
        },
        
        preprocess = {
            flood_ban = 'ℹ️ &&&1 *baneado* por flood',
            flood_kick = 'ℹ️ &&&1 *expulsado* for flood.',
            media_kick = 'ℹ️ &&&1 *expulsado*: por enviar multimedia no permitida.',
            media_ban = 'ℹ️ &&&1 *baneado*: por enviar multinedia no permitida.',
            rtl = 'ℹ️ &&&1 *expulsado* por usar caracteres RTL.',
            arab = 'ℹ️ &&&1 *expulsafo*: árabe detectado.',
            first_warn = 'Este tipo de multimedia *no está permitido* en este chat. La siguiente vez, *&&&1*'
        },
     
        kick_errors = {
            [1] = 'ℹ️ *No soy admin*.\nNo puedo realizar acciones.',
            [2] = 'ℹ️ No puedo expulsar o banear a un administrador.',
            [3] = 'ℹ️ No se necesita unban en un grupo normal.',
            [4] = 'ℹ️ Este usuario, no es miembro de éste grupo.',
            
        },
        flag = {
            no_input = 'ℹ️ Contesta a un usuario con \'@admin\' para enviar un *reporte*.',
            reported = 'ℹ️ *Reportado!*',
            no_reply = 'ℹ️ *¡Contestale a un usuario!*',
            blocked = 'ℹ️ El usuario a partir de ahora no podrá usar \'@admin\'',
            already_blocked = 'ℹ️ El usuario ya habia sido *deshabilitado* para usar \'@admin\'',
            unblocked = 'ℹ️ El usuario ahora podrá usar @admin',
            already_unblocked = 'ℹ️ El usuario ya habia sido habilitado para usar \'@admin\'',
        },
        
         all = {
            dashboard = 'Te envie un resumen de los ajustes por privado :)',
            menu = 'Te he enviado las configuraciones por privado :)',
            dashboard_first = 'Navega a travez de este mensaje para ver la informacion del grupo :)',
            menu_first = 'Toque en bloquear para *cambiar las configuraciones del grupo*, o usar ultima linea de _gestionar comportamiento del anti-flood_',
            media_first = 'Clic en la voz para *cambiar la configuración*'
            
       },
    },
}
