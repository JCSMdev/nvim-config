local lspconfig = vim.lsp.config

lspconfig('tsc',{})
vim.lsp.enable('tsc')

vim.env.PATH = "/home/linuxbrew/.linuxbrew/bin:" .. vim.env.PATH
vim.lsp.config("lua_ls", {})

vim.lsp.enable("lua_ls")
