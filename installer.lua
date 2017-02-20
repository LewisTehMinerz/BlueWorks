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
	term.setCursorPos(math.floor(w - #text)/2, yPos)
	write(text)
end


term.setTextColor(colors.lightBlue)
printCentered("BlueWorks Setup Wizard")
print()

