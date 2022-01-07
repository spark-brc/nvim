-- Map leader to space
vim.g.mapleader = ' '
local fn = vim.fn
local execute = vim.api.nvim_command
-- Sensible defaults
require('settings')
-- Key mappings
require('keymappings')
require('lualine-config')
require('nvim-tree-config')


-- Another option is to groups configuration in one folder
require('config')
-- OR you can invoke them individually here
--require('config.colorscheme')  -- color scheme
--require('config.completion')   -- completion
--require('config.fugitive')     -- fugitive



-- Auto install packer.nvim if not exists
local install_path = fn.stdpath('data')..'/site/pack/packer/opt/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  execute('!git clone https://github.com/wbthomason/packer.nvim '..install_path)
end
vim.cmd [[packadd packer.nvim]]
vim.cmd 'autocmd BufWritePost plugins.lua PackerCompile' -- Auto compile when there are changes in plugins.lua
vim.cmd("hi! Normal ctermbg=NONE guibg=NONE")
