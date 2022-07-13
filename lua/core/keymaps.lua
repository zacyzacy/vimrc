-- Shorten function name
local map = vim.keymap.set
local opts = { noremap = true, silent = true }
local term_opts = { silent = true }

-- Remap space as leader key
map("", "<Space>", "<Nop>", {})
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-----------------
-- Normal Mode --
-----------------

-- Reset Working Directory
map("n", "<F2>", ":cd %:h | :echo 'Working Directory Updated' <CR>", {})

-- Close buffer
map("n", "<leader>w", ":bw<cr>", {})

-- Delete entire word and move to Insert mode
map("n","<leader>x", "ciw")

-- Mappings for moving through splits
map("n", "<A-Left>", "<C-w>h", {})
map("n", "<A-Down>", "<C-w>j", {})
map("n", "<A-Up>", "<C-w>k", {})
map("n", "<A-Right>", "<C-w>l", {})

-- Resize current buffer by +/- 2
map("n", "<C-Left>", ":vertical resize +2<cr>", {})
map("n", "<C-Up>", ":resize +2<cr>", {})
map("n", "<C-Down>", ":resize -2<cr>", {})
map("n", "<C-Right>", ":vertical resize -2<cr>", {})

-- Alternate way to save and quit nvim
map("n", "<A-w>", ":w<CR>", {})  -- save file
map("n", "<A-q>", ":q<CR>", {})  -- quit nvim
map("n", "<A-1>", ":q!<CR>", {}) -- quit without saving

-- Nvim Comment
map("n", "<leader>c", ":CommentToggle<CR>", {}) -- Comment One Line
map("n", "<leader>p", "vip:CommentToggle<CR>", {}) -- Comment A Paragraph
map("x", "<leader>c", ":'<,'>CommentToggle<CR>", {}) -- Comment Multiple Lines In Visual Mode

-- Don't accidently create macros when trying to quit
map('n', 'Q', 'q', {})
map('n', 'q', '<nop>', {})

-- GitSings
map('n', "<leader>gp", ":Gitsigns preview_hunk<CR>", {})  -- preview_hunk
map('n', "<leader>gr", ":Gitsigns reset_buffer<CR>", {})  -- reset_buffer

-- Toggle Alpha Dashboard
map('n', "<leader>a", ":set laststatus=3<CR> | :Alpha<CR>", {})

-- Toggle NvimTree
map("n", "<leader>e", ":NvimTreeToggle<CR>", {})

-- Packer Update
map("n", "<leader>u", ":PackerSync<CR>", {})

-- Telescope Mappings
map("n", "<Leader>b", "<cmd>lua require'telescope.builtin'.buffers(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", {}) -- preview buffers
map("n", "<Leader>of", "<cmd>lua require'telescope.builtin'.oldfiles(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", {}) -- old files
map("n", "<Leader>f", "<cmd>lua require'telescope.builtin'.find_files(require('telescope.themes').get_dropdown({ previewer = false }))<cr>", {}) -- Find files
map("n", "<leader>gs", ":Telescope git_status<CR>", {}) -- git status

-----------------
-- Insert Mode --
-----------------
-- Map Escape Key To kj/jk
map ("i", "kj", "<ESC>", {})
map ("i", "jk", "<ESC>", {})

-- Fix One [Car] behind
map ("i", "<Esc>", "<Esc>`^", {})

-- Center screen after search
vim.cmd([[
nnoremap n nzzzv
nnoremap N Nzzzv
]])

-- Stay in indent mode
map("v", "<", "<gv", opts)
map("v", ">", ">gv", opts)


-- Auto Pairs
vim.cmd([[
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>0
inoremap {;<CR> {<CR>};<ESC>0
nnoremap <Leader>o o<Esc>^Da
nnoremap <Leader>O O<Esc>^Da
inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"
inoremap " ""<left>
inoremap ' ''<left>
]])

-----------------
-- Visual Mode --
-----------------
-- Move Text Up And Down
vim.cmd([[
nnoremap <C-A-J> :m .+1<CR>==
nnoremap <C-A-K> :m .-2<CR>==
inoremap <C-A-J> <Esc>:m .+1<CR>==gi
inoremap <C-A-K> <Esc>:m .-2<CR>==gi
vnoremap <C-A-J> :m '>+1<CR>gv=gv
vnoremap <C-A-K> :m '<-2<CR>gv=gv
]])
