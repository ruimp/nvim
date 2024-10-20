return {
  -- Zenbones
  {
    "zenbones-theme/zenbones.nvim",
    dependencies = "rktjmp/lush.nvim",
    priority = 1000,
    lazy = false,
    config = function()
      vim.cmd.colorscheme("zenwritten")
    end,
  },
  -- Base16 black metal
  { "metalelf0/base16-black-metal-scheme" },
  -- Kanagawa
  {
    "rebelot/kanagawa.nvim",
  },
  {
    "aliqyan-21/darkvoid.nvim",
  },
}
