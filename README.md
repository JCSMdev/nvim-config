# JCSMdev's nvim config

## Package Manager:
- nvim's built in `vim.pack`
## Features:
- LSP
- Autocompletion using COQ
- Telescope for fast file navigation
- Tree-sitter
- Reasonable key-binds
- Easy structure
## LSP troubleshoot
1. Is nvim-lspconfig installed in local directory?
 `find ~ -type d -n nvim-lspconfig` to find the directory,
 if it's found you can check all the available configurations with:
 `tree <found_path>/lsp`
2. To enable it add the following lines to: *nvim/lua/plugins/lsp.lua*
```lua
lspconfig('<server_name>',{})
vim.lsp.enable('<server_name>')
```
3. Is the server installed?
Use [server install guide](https://github.com/neovim/nvim-lspconfig/blob/master/doc/configs.md
) as reference
4. (Optional)
if it's still not working you might need to edit 
the `root_markers` variable inside the corresponding
<server>.lua file you located in the `1. step`
Example: `nvim .../nvim-lspconfig/lsp/ts_ls.lua` press `/` type `root_markers`
```lua
    local root_markers = { 'package.json', 'tsconfig.json', 'jsconfig.json', '.git', 'typescript.json', 'package-lock.json', 'yarn.lock', 'pnpm-lock.yaml', 'bun.lockb', 'bun.lock' }

```
Edit the line so it includes your project's root marker files
