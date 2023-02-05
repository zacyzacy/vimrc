-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Press jk fast to enter Normal mode
local keymap = vim.keymap.set
keymap("i", "jk", "<ESC>")
keymap("i", "kj", "<ESC>")
-- Leader / to enter find/replace mode real quick
keymap("n", "<leader>/", ":%s/")
