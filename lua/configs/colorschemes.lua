-- Nord colorscheme options
-- vim.g.nord_contrast = true
-- vim.g.nord_disable_background = true
-- vim.g.nord_cursorline_transparent = false
-- vim.g.nord_borders = false
-- vim.g.nord_italic = false

-- vim.g.tokyonight_style = "night"
-- vim.g.tokyonight_italic_functions = true
-- vim.g.tokyonight_sidebars = { "qf", "vista_kind", "terminal", "packer" }

-- Change the "hint" color to the "orange" color, and make the "error" color bright red
-- vim.g.tokyonight_colors = { hint = "orange", error = "#ff0000" }



vim.opt.termguicolors = true

-- Load nord colorscheme with A protected call
local colorscheme = "melange"
local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
if not status_ok then
  return
end
