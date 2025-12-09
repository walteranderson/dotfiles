hs.hotkey.bind({ "ctrl" }, "`", function()
	local name = "Alacritty"
	local app = hs.application.get(name)
	if app then
		if app:isFrontmost() then
			app:hide()
		else
			app:activate()
		end
	else
		hs.application.launchOrFocus(name)
	end
end)
