return {
  "nvim-neorg/neorg",
  build = ":Neorg sync-parsers",
  lazy = true,
  ft = "norg",
  cmd = "Neorg",
  dependencies = { "nvim-lua/plenary.nvim" },
  opts = {
    load = {
      ["core.defaults"] = {},
      ["core.completion"] = {
        config = {
          engine = "nvim-cmp",
          name = "[Norg]"
        },
      },
      ["core.integrations.nvim-cmp"] = {},
      ["core.concealer"] = {
        config = {
          icon_preset = "diamond",
        },
      },
      ["core.dirman"] = {
        config = {
          workspaces = {
            notes = "~/Notes",
          },
          default_workspace = "notes",
        },
      },
      ["core.journal"] = {},
      ["core.ui.calendar"] = {},
    },
  },
  keys = {
    {
      "<leader>oo",
      mode = "n",
      "<cmd>Neorg index<cr>",
      desc = "Index",
    },
    {
      "<leader>oq",
      mode = "n",
      "<cmd>Neorg return<cr>",
      desc = "Return",
    },
    {
      "<leader>oc",
      mode = "n",
      "<cmd>Neorg journal toc open<cr>",
      desc = "Calendar",
    },
    {
      "<leader>ot",
      mode = "n",
      "<cmd>Neorg journal today<cr>",
      desc = "Today",
    },
    {
      "<leader>oT",
      mode = "n",
      "<cmd>Neorg journal tomorrow<cr>",
      desc = "Tomorrow",
    },
    {
      "<leader>os",
      mode = "n",
      "<cmd>Neorg journal custom<cr>",
      desc = "Custom",
    }
  },
}
