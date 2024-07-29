return {
  -- Tokyonight
  -- {
  --   "folke/tokyonight.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   load = false,
  --   config = function()
  --     require("tokyonight").setup({ style = "night" })
  --     vim.cmd.colorscheme("tokyonight")
  --   end,
  -- },
  -- Zenbones
  {
    "zenbones-theme/zenbones.nvim",
    dependencies = "rktjmp/lush.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      vim.opt.background = "light"
      vim.cmd.colorscheme("zenwritten")
      vim.g.zenwritten = {
        lightness = "bright",
        darken_line_nr = 45,
      }
    end,
  },
}
