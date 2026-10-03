print("Please launch this from your main directory. some tools may not work correctly if not.")
local words = {
    cshutdown = function()
        os.execute('shutdown /a')
    end,
    shutdown = function()
        os.execute('echo Shutting down your computer in 15 seconds. to cancel this, type cshutdown.')
        os.execute('shutdown /s /t 15')
    end,
    noob = "not true!",
    scanfs = function()
        os.execute('dir /s')
    end,
    help = function()
        print("COMMANDS. scanfs: runs dir /s. shutdown: shuts down your computer in 5 seconds. cshutdown: cancels shutdown by running shutdown /a. motivation: shows you a motivational message i made. Info: tells you what this project is about. exit: exits the script.")
    end,
    motivation = function()
        print("Have fun, Enjoy life, Stop taking everything seriously.")
    end,
    Info = function()
        print("This is a project i made for fun. It just so happens to be my first project in coding in general. Thank you for reading this info.")
    end,
    exit = function ()
        os.exit()
    end
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
