local sandstorm = {}

-- Define la nueva paleta de colores
local colors = {
   background = '#1a1b25',
   foreground = '#ffffff',
   cursor_bg = '#7daea3',
   cursor_border = '#7daea3',
   cursor_fg = '#1a1b25',
   selection_bg = '#45403d',
   selection_fg = '#d4be98',
   ansi = {
      '#0C0C0C', -- black
      '#ea6962', -- red
      '#7daea3', -- green
      '#d8a657', -- yellow
      '#89b482', -- blue
      '#d3869b', -- magenta
      '#ab8d50', -- cyan
      '#d4be98', -- white
   },
   brights = {
      '#45403d', -- black
      '#ea6962', -- red
      '#7daea3', -- green
      '#d8a657', -- yellow
      '#89b482', -- blue
      '#d3869b', -- magenta
      '#ab8d50', -- cyan
      '#f2e5bc', -- white
   },
   tab_bar = {
      background = 'rgba(26, 27, 37, 0.4)',
      active_tab = {
         bg_color = '#45403d',
         fg_color = '#d4be98',
      },
      inactive_tab = {
         bg_color = '#1a1b25',
         fg_color = '#7c6f64',
      },
      inactive_tab_hover = {
         bg_color = '#1a1b25',
         fg_color = '#d4be98',
      },
      new_tab = {
         bg_color = '#1a1b25',
         fg_color = '#d4be98',
      },
      new_tab_hover = {
         bg_color = '#1a1b25',
         fg_color = '#d4be98',
         italic = true,
      },
   },
   visual_bell = '#ea6962',
   indexed = {
      [16] = '#ab8d50', -- String color
      [17] = '#d4be98', -- Variable/Foreground
   },
   scrollbar_thumb = '#45403d',
   split = '#7c6f64',
   compose_cursor = '#ea6962',
}

return colors
