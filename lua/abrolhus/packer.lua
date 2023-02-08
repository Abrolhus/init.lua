-- This file can be loaded by calling `lua require('plugins')` from your init.vim
-- Install packer
local install_path = vim.fn.stdpath 'data' .. '/site/pack/packer/start/packer.nvim'
-- local is_bootstrap = false
local is_bootstrap = false
if vim.fn.empty(vim.fn.glob(install_path)) > 0 then
    is_bootstrap = true
    vim.fn.system { 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path }
    -- vim.cmd [[packadd packer.nvim]]
    vim.cmd.packadd('packer.nvim')
    -- require('packer').sync()
end
-- Only required if you have packer configured as `opt`
vim.cmd.packadd('packer.nvim')

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'
    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.0',
        -- or                            , branch = '0.1.x',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }

    use({
        'rose-pine/neovim',
        as = 'rose-pine',
    })

    use({ 'nvim-treesitter/nvim-treesitter', run = ':TSUpdate' })
    use('nvim-treesitter/playground')
    -- use('mbbill/undotree')
    -- use('tpope/vim-fugitive')

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v1.x',
        requires = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' },
            { 'williamboman/mason.nvim' },
            { 'williamboman/mason-lspconfig.nvim' },

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-buffer' },
            { 'hrsh7th/cmp-path' },
            { 'saadparwaiz1/cmp_luasnip' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'hrsh7th/cmp-nvim-lua' },

            -- Snippets
            { 'L3MON4D3/LuaSnip' },
            { 'rafamadriz/friendly-snippets' },
        }
    }

    use "onsails/lspkind.nvim"
    use "lukas-reineke/indent-blankline.nvim"
    --- eye candy:
    use "j-hui/fidget.nvim"
    use {
        "SmiteshP/nvim-navic",
        requires = "neovim/nvim-lspconfig"
    }
    --- status line:
    use {
        'nvim-lualine/lualine.nvim',
        requires = { 'kyazdani42/nvim-web-devicons', opt = true }
    }
    --- tab line
    use { 'akinsho/bufferline.nvim', tag = "v3.*", requires = 'nvim-tree/nvim-web-devicons' }
    --- nerd-tree
    use {
        'nvim-tree/nvim-tree.lua',
        requires = {
            'nvim-tree/nvim-web-devicons', -- optional, for file icons
        },
        tag = 'nightly' -- optional, updated every week. (see issue #1193)
    }
    -- highlight current symbol
    use "RRethy/vim-illuminate"
    -- comment
    use "numToStr/Comment.nvim"
    -- TODO comments
    use {
        "folke/todo-comments.nvim",
        requires = "nvim-lua/plenary.nvim",
    }
    use {
        "ray-x/lsp_signature.nvim",
    }
    --- project management
    use  "ahmedkhalf/project.nvim"
    -- use {
    --
    -- 'antosha417/nvim-lsp-file-operations',
    -- requires = {
    -- { "nvim-lua/plenary.nvim" },
    -- { "kyazdani42/nvim-tree.lua" },
    -- },
    -- config = require("lsp-file-operations").setup()
    -- }
    -- use("folke/zen-mode.nvim")
    -- use("github/copilot.vim")
    -- use("eandrju/cellular-automaton.nvim")
    if is_bootstrap then
        require('packer').sync()
    end
end)
