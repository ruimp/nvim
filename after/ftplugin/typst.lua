-- Word wrap
vim.opt_local.wrap = true
vim.opt_local.linebreak = true
vim.opt_local.spell = true
vim.opt_local.colorcolumn = "80"

-- Comment format
vim.opt_local.commentstring = "// %s"

-- Create symmetrical `$$` pair
require("mini.pairs").map_buf(0, "i", "$", { action = "closeopen", pair = "$$" })

-- Keymaps
vim.keymap.set("n", "<localleader>o", function()
  local file = vim.fn.expand("%:p"):sub(1, -4) .. "pdf"
  vim.fn.system("open -a Skim.app " .. file)
end, { desc = "Open pdf" })
