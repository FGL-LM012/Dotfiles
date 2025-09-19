local function set_wallpaper()
	local hovered = cx.active.current.hovered
	if not hovered then
		ya.notify({
			title = "Set Wallpaper",
			content = "No file selected",
			timeout = 3,
			level = "error",
		})
		return
	end

	if hovered:is_dir() then
		ya.notify({
			title = "Set Wallpaper",
			content = "Please select an image file, not a directory",
			timeout = 3,
			level = "error",
		})
		return
	end

	local path = hovered.url.path

	local cmd = string.format("hyprctl hyprpaper reload ',%s'", path)

	if os.execute(cmd) == 0 then
		ya.notify({
			title = "Set Wallpaper",
			content = "Wallpaper set to: " .. hovered.name,
			timeout = 3,
			level = "info",
		})
	else
		ya.notify({
			title = "Set Wallpaper",
			content = "Failed to set wallpaper",
			timeout = 3,
			level = "error",
		})
	end
end

return {
	entry = function()
		set_wallpaper()
	end,
}
