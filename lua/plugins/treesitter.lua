require('nvim-treesitter').setup({
  install_dir = vim.fn.stdpath('data') .. '/site'
})
-- List: https://github.com/nvim-treesitter/nvim-treesitter/blob/main/SUPPORTED_LANGUAGES.md
require('nvim-treesitter').install { 'rust', 'javascript', 'zig', 'php', 'typescript', 'java'}
