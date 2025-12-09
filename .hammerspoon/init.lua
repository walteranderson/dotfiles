hs.hotkey.bind({ "ctrl" }, "`", function()
	local name = "Alacritty"
	local app = hs.application.get(name)
	if app then
		-- Check if the application is currently frontmost (active)
		if app:isFrontmost() then
			-- If frontmost, hide it
			app:hide()
		else
			-- If not frontmost, activate it (which unhides it if it was hidden)
			app:activate()
		end
	else
		-- Optional: Launch the application if it's not running
		hs.application.launchOrFocus(name)
	end
end)
