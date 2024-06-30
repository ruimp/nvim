-- Mini plugin family
return {
  "echasnovski/mini.nvim",
  event = "VeryLazy",
  config = function()
    require("mini.ai").setup({ n_lines = 500 })
    require("mini.pairs").setup()
    require("mini.surround").setup()
  end,
}
