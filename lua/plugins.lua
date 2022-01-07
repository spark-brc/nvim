-- This file can be loaded by calling `lua require('plugins')` from your init.vim


return require('packer').startup(function()


    -- Packer can manage itself as an optional plugin
    use {'wbthomason/packer.nvim', opt = true}
  
    -- Color scheme
    use { 'sainnhe/gruvbox-material' }
    use { 'joshdick/onedark.vim'}
  
    -- Fuzzy finder
    use {
        'nvim-telescope/telescope.nvim',
        requires = {{'nvim-lua/popup.nvim'}, {'nvim-lua/plenary.nvim'}}
    }
  
    -- LSP and completion
    use { 'neovim/nvim-lspconfig' }
    use { 'nvim-lua/completion-nvim' }
  
    -- Lua development
    use { 'tjdevries/nlua.nvim' }
  
  
    -- Vim dispatch
    use { 'tpope/vim-dispatch' }
  
    -- Fugitive for Git
    use { 'tpope/vim-fugitive' }


    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
        }

    -- barbar for git
    use {
        'romgrk/barbar.nvim',
        requires = {'kyazdani42/nvim-web-devicons'}
        }

    -- 
    use {
        'kyazdani42/nvim-tree.lua',
        requires = {
          'kyazdani42/nvim-web-devicons', -- optional, for file icon
        },
        config = function() require'nvim-tree'.setup {} end
    }

  end)
