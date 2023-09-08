return require('lazy').setup({
    { 'tpope/vim-fugitive',        lazy = true },
    { 'zbirenbaum/copilot.lua',    lazy = true },
    { 'edgedb/edgedb-vim',         lazy = true },
    { 'mbbill/undotree',           lazy = false },
    { 'ggandor/leap.nvim',         lazy = false },
    { 'petertriho/nvim-scrollbar', run = require('scrollbar').setup(), lazy = false },
    {
        'nvim-telescope/telescope.nvim',
        dependencies = { { 'nvim-lua/plenary.nvim' } },
        lazy = false
    },
    {
        "nvim-telescope/telescope-frecency.nvim",
        config = function()
            require("telescope").load_extension "frecency"
        end,
        dependencies = { "kkharji/sqlite.lua" },
    },
    -- Extra themes
    -- { 'rose-pine/neovim', name = 'rose-pine',  lazy = true },
    { 'catppuccin/nvim',           name = 'catppuccin', lazy = false },
    {
        'nvim-treesitter/nvim-treesitter',
        run = ':TSUpdate',
        lazy = true
    },
    {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        dependencies = {
            -- LSP Support
            { 'neovim/nvim-lspconfig' }, -- Required
            {                            -- Optional
                'williamboman/mason.nvim',
                run = ':MasonUpdate',
                lazy = true
            },
            { 'williamboman/mason-lspconfig.nvim', lazy = true }, -- Optional

            -- Autocompletion
            { 'hrsh7th/nvim-cmp' },                               -- Required
            { 'hrsh7th/cmp-nvim-lsp' },                           -- Required
            { 'L3MON4D3/LuaSnip',                  lazy = true }, -- Required
        },
        lazy = false
    },
    { 'akinsho/bufferline.nvim',   version = '*',       dependencies = 'nvim-tree/nvim-web-devicons', lazy = true },
    { 'akinsho/git-conflict.nvim', version = "*",       config = true,                                lazy = true },
    {
        'nvim-lualine/lualine.nvim',
        dependencies = { 'nvim-tree/nvim-web-devicons', lazy = false },
        run = function()
            require('lualine').setup()
        end
    },
})
