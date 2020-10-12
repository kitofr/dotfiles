local wezterm = require 'wezterm';
return {
  font_size = 14.0,
  font = wezterm.font("Fira Code"),
  color_scheme = "BlueBerry Pie",


  -- timeout_milliseconds defaults to 1000 and can be omitted
  leader = { key="a", mods="CTRL", timeout_milliseconds=1000 },
  keys = {
    {key="h", mods="LEADER", action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},
    {key="v", mods="LEADER", action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},
    {key="c", mods="LEADER", action=wezterm.action{SpawnTab="CurrentPaneDomain"}},

    -- Send "CTRL-A" to the terminal when pressing CTRL-A, CTRL-A
    {key="a", mods="LEADER|CTRL", action=wezterm.action{SendString="\x01"}},
  },

  colors = {
    tab_bar = {
      background = "#0b0022",

      active_tab = {
        bg_color = "#2b2042",
        fg_color = "#c0c0c0",
      },

      inactive_tab = {
        bg_color = "#1b1032",
        fg_color = "#303030",

      },

      inactive_tab_hover = {
        bg_color = "#3b3052",
        fg_color = "#909090",
        italic = true,

      }
    }
  }
}
