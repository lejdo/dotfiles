local programs = {
	terminal = "kitty",
	fileManager = "dolphin",
	menu = "wofi --show drun",
}

hl.monitor({
	output = "",
	mode = "preferred",
	position = "auto",
	scale = "auto",
})

hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")
hl.env("OZONE_PLATFORM", "wayland")
hl.env("ELECTRON_OZONE_PLATFORM_HINT", "auto")

hl.on("hyprland.start", function()
	hl.exec_cmd(programs.terminal)
	hl.exec_cmd("waybar")
	hl.exec_cmd("firefox")
end)

return programs
