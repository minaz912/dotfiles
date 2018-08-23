local wibox = require("wibox")
local awful = require("awful")

-- Keyboard map indicator and changer
kbdcfg = {}
kbdcfg.cmd = "setxkbmap"
-- kbdcfg.cmd = awful.spawn_with_shell("setxkbmap " .. kbdcfg.layout[kbccdg.current][1])
kbdcfg.layout = { { "us", "" , "EN" }, { "ar", "" , "AR" } }
kbdcfg.current = 1  -- us is our default layout
kbdcfg.widget = wibox.widget.textbox()
kbdcfg.widget:set_text(" " .. kbdcfg.layout[kbdcfg.current][3] .. " ")
kbdcfg.switch = function ()
  kbdcfg.current = kbdcfg.current % #(kbdcfg.layout) + 1
    local t = kbdcfg.layout[kbdcfg.current]
      kbdcfg.widget:set_text(" " .. t[3] .. " ")
        --os.execute( kbdcfg.cmd .. " " .. t[1] .. " " .. t[2] )
        awful.spawn.with_shell( kbdcfg.cmd .. " " .. t[1] .. " " .. t[2] )
        end

-- local langicon = wibox.widget.imagebox(theme.layout_magnifier)