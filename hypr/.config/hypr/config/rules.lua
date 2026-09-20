hl.config({
	input = {
		kb_layout = "se",
		kb_variant = "",
		kb_model = "",
		kb_options = "",
		kb_rules = "",
		follow_mouse = 1,
		sensitivity = 0,
	},
	xwayland = {
		force_zero_scaling = true,
	},
})


hl.window_rule({
	name = "suppress-maximize-events",
	match = { class = ".*" },
	suppress_event = "maximize",
})

hl.window_rule({
	name = "fix-xwayland-drags",
	match = {
		class = "^$",
		title = "^$",
		xwayland = true,
		float = true,
		fullscreen = false,
		pin = false,
	},
	no_focus = true,
})
hl.window_rule({
	name = "scratchpad-opacity",
	match = {
		workspace = "special:magic",
	},
	opacity = "0.60 0.60",
})
