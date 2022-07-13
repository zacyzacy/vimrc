-- COQ/LSP
-- Python
require'lspconfig'.pyright.setup{}
-- ^Python

-- Lua
local lua-path = "C:\Program Files (x86)\Lua"
require'lspconfig'.sumneko_lua.setup {
    cmd = {lua-path .. "\lua-language-server-3.4.2-win32-x64\bin\lua-language-server.exe", "-E", lua-path .. "\lua-language-server-3.4.2-win32-x64\main.lua"};
    settings = {
        Lua = {
        runtime = {
            -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
            version = '5.1',
            -- Setup your lua path
            path = lua-path .. "\5.1\lua.exe",
        },
        diagnostics = {
            -- Get the language server to recognize the `vim` global
            globals = {'vim'},
        },
        workspace = {
            -- Make the server aware of Neovim runtime files
            library = vim.api.nvim_get_runtime_file("", true),
        },
        -- Do not send telemetry data containing a randomized but unique identifier
        telemetry = {
            enable = false,
        },
        },
    },
}
-- ^Lua
vim.g.coq_settings = {auto_start = true, clients = {tabnine = {enabled = true}}}
