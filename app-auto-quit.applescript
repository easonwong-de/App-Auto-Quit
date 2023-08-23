repeat
	set appsToCheck to {"Preview", "Notes", "Calendar", "TextEdit"}
	
	repeat with anApp in appsToCheck
		if application anApp is running then
			try
				tell application anApp
					set hasVisibleWindows to false
					repeat with aWindow in windows
						if visible of aWindow is true then
							set hasVisibleWindows to true
							exit repeat
						end if
					end repeat
					
					if not hasVisibleWindows then
						quit
					end if
				end tell
			end try
		end if
	end repeat
	
	delay 5
end repeat
