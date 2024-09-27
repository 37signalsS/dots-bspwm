require'nvim-treesitter.configs'.setup {
  ensure_installed = { "bash", "css", "lua", "go", "python", "markdown", "javascript" },

  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
