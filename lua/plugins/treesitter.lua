require'nvim-treesitter.configs'.setup {
  ensure_installed = { 'typescript', 'lua', 'javascript', 'css', 'scss', 'vue' },
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
