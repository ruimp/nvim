return {
  "folke/trouble.nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },
  opts = {},
  keys = {
    {
      "<leader>xx",
      mode = "n",
      function() require("trouble").toggle() end,
      desc = "Toggle",
    },
    {
      "<leader>xw",
      mode = "n",
      function() require("trouble").toggle("workspace_diagnostics") end,
      desc = "Workspace",
    },
    {
      "<leader>xd",
      mode = "n",
      function() require("trouble").toggle("document_diagnostics") end,
      desc = "Document",
    },
    {
      "<leader>xq",
      mode = "n",
      function() require("trouble").toggle("quickfix") end,
      desc = "Quickfix",
    },
    {
      "<leader>xl",
      mode = "n",
      function() require("trouble").toggle("loclist") end,
      desc = "Loclist",
    },
    {
      "<leader>gR",
      mode = "n",
      function() require("trouble").toggle("lsp_references") end,
      desc = "References",
    }
  },
}
