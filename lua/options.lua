-- OPTIONS
-- See `:h vim.o`
-- For more options, you can see `:h option-list`
-- To see documentation for an option, you can use `:h 'optionname'`
-- (Note the single quotes)

vim.o.number = true -- Show line numbers in a column.
vim.o.relativenumber = true

-- customize Tabs
vim.o.tabstop = 2
vim.o.expandtab = true
vim.o.shiftwidth = 2



-- Sync clipboard between OS and Neovim. Schedule the setting after `UIEnter` because it can
-- increase startup-time. Remove this option if you want your OS clipboard to remain independent.
-- See `:h 'clipboard'`
-- I don't recommend it use `"+y` instead 
--vim.api.nvim_create_autocmd('UIEnter', {
--  callback = function()
--    vim.o.clipboard = 'unnamedplus'
--  end,
--})

vim.o.ignorecase = true
vim.o.smartcase = true

-- Highlight the line where the cursor is on.
vim.o.cursorline = true
-- Keep this many screen lines above/below the cursor.
vim.o.scrolloff = 10 
-- Show <tab> and trailing spaces.
vim.o.list = true 

vim.o.wrap = false

-- If performing an operation that would fail due to unsaved changes in the buffer (like `:q`),
-- instead raise a dialog asking if you wish to save the current file(s). See `:h 'confirm'`
vim.o.confirm = true



