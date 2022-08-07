local status_ok, alpha = pcall(require, "alpha")
if not status_ok then
  return
end

local dashboard = require "alpha.themes.dashboard"
dashboard.section.header.val = {
    [[███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗]],
    [[████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║]],
    [[██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║]],
    [[██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║]],
    [[██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║]],
    [[╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝]],
}
dashboard.section.buttons.val = {
  dashboard.button("f", " " .. " Find File", ":Telescope find_files <CR>"),
  dashboard.button("e", " " .. " New File", ":ene <BAR> startinsert <CR>"),
  dashboard.button("r", " " .. " Recent Files", ":Telescope oldfiles <CR>"),
  dashboard.button("t", " " .. " Find Text", ":Telescope live_grep <CR>"),
  dashboard.button("v", " " .. " Config", ":e ~/AppData/Local/nvim/init.lua | cd %:h <CR>"),
  dashboard.button("u", "דּ " .. "Update Plugins", ":PackerSync<CR>"),
  dashboard.button("m", " " .. "Mason", ":Mason<CR>"),
  dashboard.button("q", " " .. " Quit", ":qa<CR>"),
}
local function footer()
  return "ゴジラ"
end

dashboard.section.footer.val = footer()

dashboard.section.footer.opts.hl = "Type"
dashboard.section.header.opts.hl = "Include"
dashboard.section.buttons.opts.hl = "Keyword"

dashboard.opts.opts.noautocmd = true
alpha.setup(dashboard.opts)
