return {
  "andrewferrier/wrapping.nvim",
  opts = {
    create_keymaps = false,
    auto_set_mode_filetype_allowlist = {
      "latex",
      "tex",
      "markdown",
      "typst",
    },
  },
  keys = {
    {
      "<leader>tw",
      mode = "n",
      function() require("wrapping").toggle_wrap_mode() end,
      desc = "Wrap Mode",
    },
  },
}
