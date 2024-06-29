return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    options = {
      disabled_filetypes = { statusline = { "dashboard", "alpha", "starter" } },
      section_separators = "",
      component_separators = "|",
    },
  },
}
