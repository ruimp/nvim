return {
  "folke/trouble.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  config = function()
    local trouble = require("trouble")
    -- remove conflict with leap.nvim
    trouble.setup({
      actions_keys = {
        switch_severity = "<C-s>"
      },
    })
    -- keymaps
    vim.keymap.set("n", "<leader>xx", trouble.toggle,
      { desc = "Toggle" })
    vim.keymap.set("n", "<leader>xw", function()
        trouble.toggle("workspace_diagnostics")
      end,
      { desc = "Workspace" })
    vim.keymap.set("n", "<leader>xd", function()
        trouble.toggle("document_diagnostics")
      end,
      { desc = "Document" })
    vim.keymap.set("n", "<leader>xq", function()
        trouble.toggle("quickfix")
      end,
      { desc = "Quickfix" })
    vim.keymap.set("n", "<leader>xl", function()
        trouble.toggle("loclist")
      end,
      { desc = "Loclist" })
    vim.keymap.set("n", "<leader>gR", function()
        trouble.toggle("lsp_references")
      end,
      { desc = "References" })
  end
}
