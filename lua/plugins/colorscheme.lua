return {
  "mellow-theme/mellow.nvim",
  priotity = 1000,
  lazy = false,
  config = function()
    vim.g.mellow_italic_functions = true
    vim.g.mellow_bold_functions = true
    vim.cmd.colorscheme("mellow")
  end,
}
