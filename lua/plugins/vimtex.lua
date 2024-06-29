return {
  "lervag/vimtex",
  lazy = false,
  init = function()
    vim.g.vimtex_view_method = "skim"
    vim.g.vimtex_mappings_disable = { ["n"] = { "K" } }
    vim.g.vimtex_delim_toggle_mod_list = {
      { "\\big", "\\big" },
      { "\\Big", "\\Big" },
      { "\\bigg", "\\bigg" },
      { "\\Bigg", "\\Bigg" },
    }
    vim.g.vimtex_quickfix_ignore_filters = {
      "Underfull",
      "Overfull",
    }
  end,
}
