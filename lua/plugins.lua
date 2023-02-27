return {
    {
        "nvim-telescope/telescope.nvim", version = "0.1.0",
        dependencies = {
            "nvim-lua/plenary.nvim"
        }
    },
    {
        'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make'
    },
    {
        "kylechui/nvim-surround",
        -- version = "*", -- Use for stability; omit to use `main` branch for the latest features
        config = function()
            require("nvim-surround").setup({
                -- Configuration here, or leave empty to use defaults
            })
        end
    },
    {
        "rose-pine/neovim",
        name = "rose-pine",
        lazy = false,
        priority = 1000,
    },
    {
        "nvim-treesitter/nvim-treesitter",
        build = ":TSUpdate"
    },
    {
        "nvim-treesitter/playground",
        lazy = true,
    },
    -- { "mbbill/undotree" }
    -- ("tpope/vim-fugitive")
    {
        "VonHeikemen/lsp-zero.nvim",
        branch = "v1.x",
        dependencies = {
            -- LSP Support
            "neovim/nvim-lspconfig",
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            -- Autocompletion
            "hrsh7th/nvim-cmp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-path",
            "saadparwaiz1/cmp_luasnip",
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-nvim-lua",
            -- Snippets
            "L3MON4D3/LuaSnip",
            "rafamadriz/friendly-snippets",
        }
    },
    { "onsails/lspkind.nvim" },
    { "lukas-reineke/indent-blankline.nvim" },
    --- eye candy:
    { "j-hui/fidget.nvim" },
    {
        "SmiteshP/nvim-navic",
        dependencies = { "neovim/nvim-lspconfig" }
    },
    --- status line:
    {
        "nvim-lualine/lualine.nvim",
        -- dependencies = { "kyazdani42/nvim-web-devicons", lazy = true }
        dependencies = { "nvim-tree/nvim-web-devicons" }
    },
    --- centralized command line:
    --[[ {
        "folke/noice.nvim" ,
        dependencies = {
            "MunifTanjim/nui.nvim",
            "rcarriga/nvim-notify",
        }

    }, ]]
    --- winbar:
    {
        "utilyre/barbecue.nvim",
        name = "barbecue",
        version = "*",
        dependencies = {
            "SmiteshP/nvim-navic",
            "nvim-tree/nvim-web-devicons", -- optional dependency
        },
        opts = {
            -- configurations go here
        },
    },
    --- tab line
    { "akinsho/bufferline.nvim",
        version = "v3.*",
        dependencies = { "nvim-tree/nvim-web-devicons" }
    },
    --- nerd-tree
    {
        "nvim-tree/nvim-tree.lua",
        dependencies = {
            "nvim-tree/nvim-web-devicons", -- optional, for file icons
        },
        version = "nightly" -- optional, updated every week. (see issue #1193)
    },
    -- highlight current symbol
    { "RRethy/vim-illuminate" },
    -- comment
    { "numToStr/Comment.nvim" },
    -- TODO comments
    {
        "folke/todo-comments.nvim",
        dependencies = "nvim-lua/plenary.nvim",
    },
    { "ray-x/lsp_signature.nvim", },
    --- project management
    { "ahmedkhalf/project.nvim" },
    { "folke/which-key.nvim", },
}
