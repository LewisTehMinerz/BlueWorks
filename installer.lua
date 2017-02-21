local _DATA = {
	instLoc = 10,
	exitLoc = 12,
	instLbl = "Install BlueWorks [I]",
	exitLbl = "Exit Installer [E]",
	instKey = keys.i,
	exitKey = keys.e
}

term.clear()
term.setCursorPos(1, 1)
if not term.isColor() then
	error("BlueWorks cannot run with a standard computer! Upgrade to an advanced computer to use BlueWorks.", 0)	
end
term.setTextColor(colors.blue)
print([[
    ____  __         _       __           __       
   / __ )/ /_  _____| |     / /___  _____/ /_______
  / __  / / / / / _ \ | /| / / __ \/ ___/ //_/ ___/
 / /_/ / / /_/ /  __/ |/ |/ / /_/ / /  / ,< (__  ) 
/_____/_/\__,_/\___/|__/|__/\____/_/  /_/|_/____/  
                                                   	
]])

function printCentered(text)
	w, h = term.getSize()
	xPos, yPos = term.getCursorPos()
	term.setCursorPos(math.floor(w - #text)/2, yPos)
	print(text)
end
function writeCentered(text, yPos)
	w, h = term.getSize()
	_xPos, _yPos = term.getCursorPos()
	term.setCursorPos(math.floor(w - #text)/2, yPos)
	write(text)
	term.setCursorPos(_xPos, _yPos)
end


term.setTextColor(colors.lightBlue)
printCentered("BlueWorks Setup Wizard")
print()
term.setTextColor(colors.cyan)
writeCentered(_DATA.instLbl, _DATA.instLoc)
writeCentered(_DATA.exitLbl, _DATA.exitLoc)
term.setBackgroundColor(colors.gray)
while true do
	local _, key = os.pullEvent("key")
	if key == _DATA.exitKey then
		writeCentered(_DATA.exitLbl, _DATA.exitLoc)
		sleep(0.75)
		break
	elseif key == _DATA.instKey then
		writeCentered(_DATA.instLbl, _DATA.instLoc)
		sleep(0.75)
		break
	end
end
