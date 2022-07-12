local core_modules = {

---- Core Settings ----------------------------------
 "core/plugins",           -- Plugins + Packer Config
 "core/keymaps",           -- Custom Keymaps
 "core/options",           -- General Options

---- Plugin Configurations --------------------------
 "configs/impatient",      -- Improve Startup Time
 "configs/colorschemes",   -- All Colorschemes
 "configs/treesitter",     -- Syntax Highlighting
 "configs/alpha",          -- Wellcome Screen
 "configs/nvimtree",       -- File Explorer
 "configs/gitsigns",       -- Git Integration
 "configs/commentary",     -- Easily Comment Lines
 "configs/statusline",     -- Status Line
 "configs/colorizer",      -- Colors Highlighter
 "configs/neoscroll",      -- Smooth Scrolling
 "configs/toggleterm",     -- Floating Terminal
 "configs/telescope",      -- Fuzzy finder
 "configs/lsp",            -- coq/lsp
---- Other Utilities --------------------------------
 "utils/utils",            -- Utilities

}
-- Using pcall we can handle better any loading issues
for _, module in ipairs(core_modules) do
    local ok, err = pcall(require, module)
    if not ok then
      return
    end
end
