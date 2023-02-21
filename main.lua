local Discord = require('discordia');
local Client = Discord.Client();

Client:on('ready', function()
    print('Bot is ready!')
end)

Client:on("messageCreate", function(message)

    local content = message.content

	if content == "!ping" then
		message:reply("Pong!")
    elseif content == "!pong" then
		message:reply("Ping!")
	end
end)

local TokenFile = io.open("Token.txt", "r")
local TokenString = TokenFile:read('*a')
TokenFile:close()
Client:run('Bot ' .. TokenString);