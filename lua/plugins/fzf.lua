return {
  "ibhagwan/fzf-lua",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  keys = {
    {
      "<leader>ff",
      function()
        require("fzf-lua").files()
      end,
      desc = "Files",
    },
    {
      "<leader>fb",
      function()
        require("fzf-lua").buffers()
      end,
      desc = "Buffers",
    },
    {
      "<leader>fg",
      function()
        require("fzf-lua").live_grep()
      end,
      desc = "Live Grep",
    },
    {
      "<leader>fh",
      function()
        require("fzf-lua").helptags()
      end,
      desc = "Help Tags",
    },
    {
      "<leader>fr",
      function()
        require("fzf-lua").oldfiles()
      end,
      desc = "Recent Files",
    },
    {
      "<leader>fc",
      function()
        require("fzf-lua").files({ cwd = "~/.config/nvim" })
      end,
      desc = "Config Files",
    },
    {
      "<leader>fp",
      function()
        require("fzf-lua").fzf_exec(function(add_to_results)
          local contents = require("project_nvim").get_recent_projects()
          for _, project in pairs(contents) do
            add_to_results(project)
          end
          add_to_results()
        end, {
          prompt = "Projects> ",
          actions = {
            ["default"] = function(choice)
              vim.cmd.edit(choice[1])
            end,
          },
        })
      end,
      desc = "Projects",
    },
  },
  opts = {},
}
