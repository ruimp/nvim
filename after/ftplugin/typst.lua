-- Word wrap
vim.opt_local.wrap = true
vim.opt_local.linebreak = true
vim.opt_local.spell = true

-- Comment format
vim.opt.commentstring = "// %s"

-- Keymaps
vim.keymap.set("n", "<localleader>o", function()
  local file = vim.fn.expand("%:p"):sub(1, -4) .. "pdf"
  vim.fn.system("open -a Skim.app " .. file)
end, { desc = "Open" })
