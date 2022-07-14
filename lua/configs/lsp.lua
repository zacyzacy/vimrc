-- COQ/LSP
-- Python
require'lspconfig'.pyright.setup{}
-- ^Python

vim.g.coq_settings = {auto_start = 'shut-up', clients = {tabnine = {enabled = true}}}
