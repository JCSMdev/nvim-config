require('options')


-- PLUGINS
-- See `:h :packadd`, `:h vim.pack`

-- Add the "nohlsearch" package to automatically disable search highlighting after
-- 'updatetime' and when going to insert mode.
vim.cmd('packadd! nohlsearch')

-- Install third-party plugins via "vim.pack.add()".

local gh = function(x) return 'https://github.com/' .. x end
local cb = function(x) return 'https://codeberg.org/' .. x end

vim.pack.add({
  -- Colorscheme
  gh('sainnhe/sonokai'),

  -- Quickstart configs for LSP
  -- https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
  gh('neovim/nvim-lspconfig'),

  -- Enhanced quickfix/loclist
  gh('stevearc/quicker.nvim'),
  -- Git integration
  gh('lewis6991/gitsigns.nvim'),
  -- needed for Telescope
  gh('nvim-lua/plenary.nvim'),
  -- Telescope for findig files quick
  gh('nvim-telescope/telescope.nvim'),
  -- Tree-sitter https://github.com/nvim-treesitter/nvim-treesitter
  gh('nvim-treesitter/nvim-treesitter'),
  
  -- Autocompletion with COQ
  { src = 'https://github.com/ms-jpq/coq_nvim', },
  { src = 'https://github.com/ms-jpq/coq.artifacts', },
})

require('keymaps') -- here so keymaps can use plugins
require('autocommands')
require('colorscheme')
require('quicker').setup {}
require('gitsigns').setup {}
require('plugins.coq')
require('plugins.lsp')
require('plugins.telescope')
require('plugins.treesitter')
