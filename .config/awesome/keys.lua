local hotkeys_popup = require("awful.hotkeys_popup")
local cyclefocus = require("cyclefocus")
local menubar = require("menubar")
local gears = require("gears")
local awful = require("awful")

local globalkeys = gears.table.join(
	awful.key({ modkey }, "s", hotkeys_popup.show_help, { description = "show help", group = "awesome" }),
	awful.key({ modkey }, "Left", awful.tag.viewprev, { description = "view previous", group = "tag" }),
	awful.key({ modkey }, "Right", awful.tag.viewnext, {
		description = "view next",
		group = "tag",
	}),
	awful.key({ modkey }, "Escape", awful.tag.history.restore, { description = "go back", group = "tag" }),
	-- awful.key({}, "Escape", awful.tag.history.restore, { description = "go back", group = "tag" }),

	awful.key({}, "XF86AudioRaiseVolume", function()
		awful.spawn.with_shell("pactl set-sink-volume @DEFAULT_SINK@ +2%")
	end, {
		description = "volume increase",
		group = "volume",
	}),
	awful.key({}, "XF86AudioLowerVolume", function()
		awful.spawn.with_shell("pactl set-sink-volume @DEFAULT_SINK@ -2%")
	end, {
		description = "volume decrease",
		group = "volume",
	}),
	awful.key({}, "XF86AudioMute", function()
		awful.spawn.with_shell("pactl set-sink-mute @DEFAULT_SINK@ toggle")
	end, {
		description = "volume mute",
		group = "volume",
	}),
	awful.key({}, "XF86AudioMicMute", function()
		awful.spawn.with_shell("pactl set-source-mute @DEFAULT_SOURCE@ toggle")
	end, {
		description = "mic increase",
		group = "volume",
	}),
	-- XF86AudioLowerVolume pactl set-sink-volume @DEFAULT_SINK@ -2%
	-- XF86AudioMute pactl set-sink-mute @DEFAULT_SINK@ toggle
	-- XF86AudioMicMute pactl set-source-mute @DEFAULT_SOURCE@ toggle
	awful.key({ modkey }, "w", function()
		mymainmenu:show()
	end, {
		description = "show main menu",
		group = "awesome",
	}), -- Layout manipulation
	awful.key({ modkey }, "u", awful.client.urgent.jumpto, {
		description = "jump to urgent client",
		group = "client",
	}),
	awful.key({ modkey }, "Tab", function(c)
		cyclefocus.cycle({ modifier = "Super_L" })
	end),
	-- modkey+Shift+Tab: backwards
	awful.key({ modkey, "Shift" }, "Tab", function(c)
		cyclefocus.cycle({ modifier = "Super_L" })
	end),
	awful.key({ modkey }, "Return", function()
		awful.spawn.spawn("kitty")
	end, {
		description = "open a terminal",
		group = "launcher",
	}),

	awful.key({ modkey }, "d", function()
		awful.spawn.with_shell("rofi -show combi")
	end, {
		description = "open menu launcher",
		group = "launcher",
	}),
	awful.key({ modkey, "Shift" }, "r", awesome.restart, {
		description = "reload awesome",
		group = "awesome",
	}),
	awful.key({ modkey, "Shift" }, "a", awesome.quit, { description = "quit awesome", group = "awesome" }),

	-- awful.key({ modkey }, "l", function()
	--   awful.tag.incmwfact(0.05)
	-- end, {
	--   description = "increase master width factor",
	--   group = "layout",
	-- }),
	awful.key({ modkey }, "space", function()
		awful.layout.inc(1)
	end, {
		description = "select next",
		group = "layout",
	}),
	awful.key({ modkey, "Shift" }, "space", function()
		awful.layout.inc(-1)
	end, {
		description = "select previous",
		group = "layout",
	}),

	awful.key({ modkey, "Control" }, "n", function()
		local c = awful.client.restore()
		-- Focus restored client
		if c then
			c:emit_signal("request::activate", "key.unminimize", { raise = true })
		end
	end, {
		description = "restore minimized",
		group = "client",
	}), -- Prompt
	awful.key({ modkey }, "r", function()
		awful.screen.focused().mypromptbox:run()
	end, {
		description = "run prompt",
		group = "launcher",
	}),

	awful.key({ modkey }, "x", function()
		awful.prompt.run({
			prompt = "Run Lua code: ",
			textbox = awful.screen.focused().mypromptbox.widget,
			exe_callback = awful.util.eval,
			history_path = awful.util.get_cache_dir() .. "/history_eval",
		})
	end, {
		description = "lua execute prompt",
		group = "awesome",
	}), -- Menubar
	awful.key({ modkey }, "p", function()
		menubar.show()
	end, { description = "show the menubar", group = "launcher" })
)

-- Bind all key numbers to tags.
-- Be careful: we use keycodes to make it work on any keyboard layout.
-- This should map on the top row of your keyboard, usually 1 to 9.
for i = 1, 9 do
	globalkeys = gears.table.join(
		globalkeys, -- View tag only.
		awful.key({ modkey }, "#" .. i + 9, function()
			local screen = awful.screen.focused()
			local tag = screen.tags[i]
			if tag then
				tag:view_only()
			end
		end, {
			description = "view tag #" .. i,
			group = "tag",
		}),
		-- Toggle tag display.
		awful.key({ modkey, "Control" }, "#" .. i + 9, function()
			local screen = awful.screen.focused()
			local tag = screen.tags[i]
			if tag then
				awful.tag.viewtoggle(tag)
			end
		end, {
			description = "toggle tag #" .. i,
			group = "tag",
		}),
		-- Move client to tag.
		awful.key({ modkey, "Shift" }, "#" .. i + 9, function()
			if client.focus then
				local tag = client.focus.screen.tags[i]
				if tag then
					client.focus:move_to_tag(tag)
				end
			end
		end, {
			description = "move focused client to tag #" .. i,
			group = "tag",
		}),
		-- Toggle tag on focused client.
		awful.key({ modkey, "Control", "Shift" }, "#" .. i + 9, function()
			if client.focus then
				local tag = client.focus.screen.tags[i]
				if tag then
					client.focus:toggle_tag(tag)
				end
			end
		end, {
			description = "toggle focused client on tag #" .. i,
			group = "tag",
		})
	)
end

-- globalkeys = gears.table.join(
--   globalkeys, -- View tag only.
--   awful.key({ modkey }, "#49", function()
--     local screen = awful.screen.focused()
--     local tag = screen.tags["~"]
--     if tag then
--       tag:view_only()
--     end
--   end, {
--     description = "view tag #" .. "#49",
--     group = "tag",
--   }),
--   -- Toggle tag display.
--   awful.key({ modkey, "Control" }, "#49", function()
--     local screen = awful.screen.focused()
--     local tag = screen.tags["~"]
--     if tag then
--       awful.tag.viewtoggle(tag)
--     end
--   end, {
--     description = "toggle tag #" .. "~",
--     group = "tag",
--   }),
--   -- Move client to tag.
--   awful.key({ modkey, "Shift" }, "#49", function()
--     if client.focus then
--       local tag = client.focus.screen.tags["~"]
--       if tag then
--         client.focus:move_to_tag(tag)
--       end
--     end
--   end, {
--     description = "move focused client to tag #" .. "#49",
--     group = "tag",
--   }),
--   -- Toggle tag on focused client.
--   awful.key({ modkey, "Control", "Shift" }, "#49", function()
--     if client.focus then
--       local tag = client.focus.screen.tags["~"]
--       if tag then
--         client.focus:toggle_tag(tag)
--       end
--     end
--   end, {
--     description = "toggle focused client on tag #" .. "#49",
--     group = "tag",
--   })
-- )

-- client specific
local clientkeys = gears.table.join(
	awful.key({ modkey }, "f", function(c)
		c.fullscreen = not c.fullscreen
		c:raise()
	end, {
		description = "toggle fullscreen",
		group = "client",
	}),
	awful.key({ modkey }, "q", function(c)
		c:kill()
	end, {
		description = "close",
		group = "client",
	}),
	awful.key(
		{ modkey, "Control" },
		"space",
		awful.client.floating.toggle,
		{ description = "toggle floating", group = "client" }
	),
	-- awful.key({ modkey, "Control" }, "Return", function(c)
	--   c:swap(awful.client.getmaster())
	-- end, {
	--   description = "move to master",
	--   group = "client",
	-- }),
	awful.key({ modkey }, "o", function(c)
		c:move_to_screen()
	end, {
		description = "move to screen",
		group = "client",
	}),
	awful.key({ modkey }, "t", function(c)
		c.ontop = not c.ontop
	end, {
		description = "toggle keep on top",
		group = "client",
	}),
	awful.key({ modkey }, "n", function(c)
		-- The client currently has the input focus, so it cannot be
		-- minimized, since minimized clients can't have the focus.
		c.minimized = true
	end, {
		description = "minimize",
		group = "client",
	}),
	awful.key({ modkey }, "m", function(c)
		c.maximized = not c.maximized
		c:raise()
	end, {
		description = "(un)maximize",
		group = "client",
	}),
	awful.key({ modkey, "Control" }, "m", function(c)
		c.maximized_vertical = not c.maximized_vertical
		c:raise()
	end, {
		description = "(un)maximize vertically",
		group = "client",
	}),
	awful.key({ modkey, "Shift" }, "m", function(c)
		c.maximized_horizontal = not c.maximized_horizontal
		c:raise()
	end, {
		description = "(un)maximize horizontally",
		group = "client",
	})
)
-- return { globalkeys ,clientkeys}
local M = {}
M.globalkeys = globalkeys
M.clientkeys = clientkeys
return M