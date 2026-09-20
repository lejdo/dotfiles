local mediaBinds = {
	{ key = "XF86AudioRaiseVolume", command = "wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+" },
	{ key = "XF86AudioLowerVolume", command = "wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-" },
	{ key = "XF86AudioMute", command = "wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle" },
	{ key = "XF86AudioMicMute", command = "wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle" },
	{ key = "XF86MonBrightnessUp", command = "brightnessctl -e4 -n2 set 5%+" },
	{ key = "XF86MonBrightnessDown", command = "brightnessctl -e4 -n2 set 5%-" },
	{ key = "XF86AudioNext", command = "playerctl next" },
	{ key = "XF86AudioPause", command = "playerctl play-pause" },
	{ key = "XF86AudioPlay", command = "playerctl play-pause" },
	{ key = "XF86AudioPrev", command = "playerctl previous" },
}

for _, bind in ipairs(mediaBinds) do
	hl.bind(bind.key, hl.dsp.exec_cmd(bind.command), { locked = true, repeating = true })
end

hl.config({
	input = {
		touchpad = {
			natural_scroll = true,
		},
	},
})
