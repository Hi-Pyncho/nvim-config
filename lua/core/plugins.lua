local lazypath = vim.fn.stdpath('data') .. '/lazy/lazy.nvim'
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    'git',
    'clone',
    '--filter=blob:none',
    'https://github.com/folke/lazy.nvim.git',
    '--branch=stable', -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
  { 'phaazon/hop.nvim' },
  { 'catppuccin/nvim', name = 'catppuccin', priority = 1000 },
  {
    'nvim-neo-tree/neo-tree.nvim',
    branch = 'v3.x',
    dependencies = {
      'nvim-lua/plenary.nvim',
      'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
      'MunifTanjim/nui.nvim',
    }
  },
  { 'nvim-treesitter/nvim-treesitter' },
  { 'mattn/emmet-vim' },
  { 'neovim/nvim-lspconfig' },
  { 'hrsh7th/cmp-nvim-lsp' },
  { 'hrsh7th/cmp-buffer' }, 
  { 'hrsh7th/cmp-path' },
  { 'hrsh7th/cmp-cmdline' }, 
  { 'hrsh7th/nvim-cmp' }, 
  { 'lewis6991/gitsigns.nvim' },
  { 'williamboman/mason.nvim', build = ':MasonUpdate' },
  {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.4',
    dependencies = {'nvim-lua/plenary.nvim'}
  },
  {
    'nvim-lualine/lualine.nvim',
    dependencies = {
      'nvim-tree/nvim-web-devicons', 'linrongbin16/lsp-progress.nvim'
    }
  },
  { 'terrortylor/nvim-comment' },
  { 'windwp/nvim-autopairs' },
  { 'nvim-tree/nvim-web-devicons' },
  { 'jose-elias-alvarez/null-ls.nvim' },
  { 'akinsho/toggleterm.nvim', version = '*', config = true },
  { 'windwp/nvim-ts-autotag' },
  { 'akinsho/bufferline.nvim', dependencies = { 'nvim-tree/nvim-web-devicons' } },
  { 'folke/which-key.nvim' },
  { 'hrsh7th/vim-vsnip' },
  { 'hrsh7th/vim-vsnip-integ' },
  {
    'glepnir/dashboard-nvim',
    event = 'VimEnter',
    dependencies = {{ 'nvim-tree/nvim-web-devicons' }}
  },
  {
    "folke/flash.nvim",
    event = "VeryLazy",
    ---@type Flash.Config
    opts = {},
    keys = {
      {
        "s",
        mode = { "n", "x", "o" },
        function()
          require("flash").jump({
            search = {
              mode = function(str)
                return "\\<" .. str
              end,
            },
          })
        end,
        desc = "Flash",
      },
      {
        "S",
        mode = { "n", "o", "x" },
        function()
          require("flash").treesitter()
        end,
        desc = "Flash Treesitter",
      },
      {
        "r",
        mode = "o",
        function()
          require("flash").remote()
        end,
        desc = "Remote Flash",
      },
      {
        "R",
        mode = { "o", "x" },
        function()
          require("flash").treesitter_search()
        end,
        desc = "Flash Treesitter Search",
      },
      {
        "<c-s>",
        mode = { "c" },
        function()
          require("flash").toggle()
        end,
        desc = "Toggle Flash Search",
      },
    },
  },
})
