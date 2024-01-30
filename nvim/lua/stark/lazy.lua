local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Example using a list of specs with the default options
vim.g.mapleader = " " -- Make sure to set `mapleader` before lazy so your mappings are correct

require("lazy").setup({

    { "rose-pine/neovim", name = "rose-pine" },
    {'nvim-telescope/telescope.nvim', tag = '0.1.5'},
    {"nvim-treesitter/nvim-treesitter", build = ":TSUpdate"},
    {'nvim-treesitter/playground'},
    {'ThePrimeagen/harpoon'},
    {'mbbill/undotree'},
    {'tpope/vim-fugitive'},
    {'VonHeikemen/lsp-zero.nvim', branch = 'v3.x'},

    {'neovim/nvim-lspconfig'},
    {'williamboman/mason.nvim'},
    {'williamboman/mason-lspconfig.nvim'},

    -- Autocompletion
    {'hrsh7th/nvim-cmp'},
    {'hrsh7th/cmp-buffer'},
    {'hrsh7th/cmp-path'},
    {'saadparwaiz1/cmp_luasnip'},
    {'hrsh7th/cmp-nvim-lsp'},
    {'hrsh7th/cmp-nvim-lua'},

    -- Snippets
    {'L3MON4D3/LuaSnip'},
    { "rafamadriz/friendly-snippets" },

    {'m4xshen/autoclose.nvim'},

    {'nvim-lua/plenary.nvim'}

})
