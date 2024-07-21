-- Highlight when yanking (copying) text
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlight when yanking text",
  group = vim.api.nvim_create_augroup("custom-highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})

-- Setup latex formatting
vim.api.nvim_create_autocmd("FileType", {
  group = vim.api.nvim_create_augroup("custom-text", { clear = true }),
  pattern = { "latex", "plaintex", "typst", "markdown" },
  callback = function()
    vim.opt_local.wrap = true
    vim.opt_local.linebreak = true
    vim.opt_local.spell = false

    -- Testing conceal tweaks, defaults to conceallevel=2
    -- vim.opt_local.conceallevel = 0
  end,
})
