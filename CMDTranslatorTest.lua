local words = {
    cshutdown = function ()
        os.execute('shutdown /a')
    end,
    shutdown = function()
        os.execute('shutdown /s /t 5')
    end,
    noob = "not true!",
    scanfs = function()
        os.execute('dir /s')
    end,
    help = function()
        print("COMMANDS. scanfs: runs dir /s. shutdown: shuts down your computer in 5 seconds. cshutdown: cancels shutdown by running shutdown /a.")
    end,
}
while true do
    io.write(">> ")
    local reader = io.read()
    local commands = words[reader]
    if type(commands) == "function" then
        commands()
    elseif commands then
        print(commands)
    else
        print("idk bro")
    end
end
