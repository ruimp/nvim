-- -- Catppuccin
-- return {
-- 	"catppuccin/nvim",
-- 	name = "catppuccin",
-- 	priority = 1000,
--   opts = {
--     flavour = "latte",
--     background = {
--       light = "latte",
--       dark = "mocha",
--     },
--     term_colors = true,
--     integrations = {
--       notify = true,
--     },
--   },
-- 	config = function(_, opts)
--     require("catppuccin").setup(opts)
-- 		vim.cmd.colorscheme("catppuccin")
-- 	end,
-- }

-- Moonfly
-- return {
--   "bluz71/vim-moonfly-colors",
--   name = "moonfly",
--   lazy = false,
--   priority = 1000,
--   config = function()
--     vim.opt.termguicolors = true
--     vim.cmd.colorscheme("moonfly")
--   end,
-- }

return {
  "nyoom-engineering/oxocarbon.nvim",
  name = "oxocarbon",
  lazy = false,
  priority = 1000,
  config = function()
    vim.opt.termguicolors = true
    vim.opt.background = "dark"
    vim.cmd.colorscheme("oxocarbon")
  end,
}
