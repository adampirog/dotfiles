require'nvim-treesitter.configs'.setup {
  ensure_installed = {"c", "cpp","lua", "vim", "vimdoc",
                      "query","python", "fish", "bash"},

  sync_install = false,
  auto_install = false,

  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}

