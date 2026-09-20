-- AUTOCOMMANDS (EVENT HANDLERS)
--
-- See `:h lua-guide-autocommands`, `:h autocmd`, `:h nvim_create_autocmd()`

-- Highlight when yanking (copying) text.
-- Try it with `yap` in normal mode. See `:h vim.hl.on_yank()`
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  callback = function()
    vim.hl.on_yank()
  end,
})

-- Create an autocommand that runs whenever an LSP client attaches to a buffer
vim.api.nvim_create_autocmd('LspAttach', {
  callback = function(args)
    local client = vim.lsp.get_client_by_id(args.data.client_id)
    local opts = { buffer = args.buf }

    -- Standard LSP keymaps
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)      -- Go to definition
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)     -- Go to declaration
    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)          -- Show documentation/info on symbol
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)  -- Go to implementation
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)      -- Find references
    vim.keymap.set('n', '<leader>rn', vim.lsp.buf.rename, opts)  -- Rename symbol
    vim.keymap.set({ 'n', 'v' }, '<leader>ca', vim.lsp.buf.code_action, opts) -- Code actions
  end,
})

-- USER COMMANDS: DEFINE CUSTOM COMMANDS
--
-- See `:h nvim_create_user_command()` and `:h user-commands`

-- Create a command `:GitBlameLine` that print the git blame for the current line
vim.api.nvim_create_user_command('GitBlameLine', function()
  local line_number = vim.fn.line('.') -- Get the current line number. See `:h line()`
  local filename = vim.api.nvim_buf_get_name(0)
  print(vim.system({ 'git', 'blame', '-L', line_number .. ',+1', filename }):wait().stdout)
end, { desc = 'Print the git blame for the current line' })

-- View Packages
-- hover over a package and press `gra` to remove it
vim.api.nvim_create_user_command('PackUpdate', function()
  print('gra to remove package')
  vim.pack.update(nil, { offline = true })
end, { desc = 'Update packages offline using vim.pack' })
