-- Install Packer automatically if it's not installed(Bootstraping)
-- Hint: string concatenation is done by `..`
--
-- Inspired by:
-- https://martinlwx.github.io/en/config-neovim-from-scratch/
--
local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end
local packer_bootstrap = ensure_packer()


-- Reload configurations if we modify plugins.lua
-- Hint
--     <afile> - replaced with the filename of the buffer being manipulated
vim.cmd([[
  augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
  augroup end
]])


-- Install plugins here - `use ...`
-- Packer.nvim hints
--     after = string or list,           -- Specifies plugins to load before this plugin. See "sequencing" below
--     config = string or function,      -- Specifies code to run after this plugin is loaded
--     requires = string or list,        -- Specifies plugin dependencies. See "dependencies".
--     ft = string or list,              -- Specifies filetypes which load this plugin.
--     run = string, function, or table, -- Specify operations to be run after successful installs/updates of a plugin
return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    ---------------------------------------
    -- NOTE: PUT YOUR THIRD PLUGIN HERE --
    ---------------------------------------

	use 'ellisonleao/gruvbox.nvim'

    -- Plugins for completions engine

    use { 'williamboman/mason.nvim' }
    use { 'williamboman/mason-lspconfig.nvim'}
    use { 'neovim/nvim-lspconfig' }
    use { 'hrsh7th/nvim-cmp', config = [[require('config.nvim-cmp')]] }
    use { 'hrsh7th/cmp-nvim-lsp', after = 'nvim-cmp' }
    use { 'hrsh7th/cmp-buffer', after = 'nvim-cmp' }        -- buffer auto-completion
    use { 'hrsh7th/cmp-path', after = 'nvim-cmp' }          -- path auto-completion
    use { 'hrsh7th/cmp-cmdline', after = 'nvim-cmp' }       -- cmdline auto-completion
    use 'L3MON4D3/LuaSnip'
    use 'saadparwaiz1/cmp_luasnip'

    -- Statusline / lua-line
    use {
        "nvim-lualine/lualine.nvim",
        event = "BufEnter",
        config = [[require("config.lualine")]],
        requires = { "nvim-web-devicons" },
    }

    -- Tiny enhancements
    use { 'm4xshen/autoclose.nvim',
        require("autoclose").setup()
    }
    use "lukas-reineke/indent-blankline.nvim"
    use { "kylechui/nvim-surround",
        tag = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = [[require("nvim-surround").setup()]]
    } 
   use { 'terrortylor/nvim-comment',
      require("nvim_comment").setup()
   }
   use { 'christoomey/vim-sort-motion' }

    -- Treesitter
    use { 'nvim-treesitter/nvim-treesitter',
        config = [[require("config.treesitter")]],
        run = ':TSUpdate'
    }

    -- Telescope
    use { 'nvim-telescope/telescope.nvim', tag = '0.1.2', 
        requires = { 
            {'nvim-lua/plenary.nvim'},
            {'dapc11/telescope-yaml.nvim'}
        },
        config = [[require("config.telescope")]],
        -- requires = { "dapc11/telescope-yaml.nvim" }
    }

    -- git
   use { 'lewis6991/gitsigns.nvim',
      config = [[require("config.gitsigns")]]}
   -- use { 'NeogitOrg/neogit', 
   --    requires = {
   --       'nvim-lua/plenary.nvim',
   --       'sindrets/diffview.nvim'
   --    },
   --    require("neogit").setup(),
   --    config = [[require("config.neogit")]]
   -- }
   use { 'tpope/vim-fugitive' }



    -- Automatically set up your configuration after cloning packer.nvim
    -- Put this at the end after all plugins
    if packer_bootstrap then
        require('packer').sync()
    end
end)
