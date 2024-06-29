-- Mini plugin family
return {
  "echasnovski/mini.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  event = "VeryLazy",
  config = function()
    require("mini.ai").setup({ n_lines = 500 })
    require("mini.diff").setup()
    require("mini.pairs").setup()
    require("mini.indentscope").setup()
    require("mini.surround").setup()
  end,
}
