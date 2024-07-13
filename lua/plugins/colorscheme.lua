-- Old World colorscheme
-- return {
--   "dgox16/oldworld.nvim",
--   lazy = false,
--   priority = 1000,
--   init = function()
--     vim.cmd.colorscheme("oldworld")
--   end,
-- }

-- Kanagawa
-- return {
--   "rebelot/kanagawa.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require("kanagawa").setup({
--       theme = "dragon",
--       background = {
--         dark = "dragon",
--         light = "lotus",
--       },
--     })
--     vim.cmd.colorscheme("kanagawa")
--   end,
-- }

-- Tokyonight
-- return {
--   "folke/tokyonight.nvim",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     require("tokyonight").setup({ style = "night" })
--     vim.cmd.colorscheme("tokyonight")
--   end,
-- }

return {
  "rose-pine/neovim",
  name = "rose-pine",
  lazy = false,
  priority = 1000,
  config = function()
    require("rose-pine").setup()
    vim.cmd.colorscheme("rose-pine")
  end,
}
