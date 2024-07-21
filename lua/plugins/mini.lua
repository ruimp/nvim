-- ── Mini plugin family ──────────────────────────────────────────────
return {
  "echasnovski/mini.nvim",
  lazy = false,
  config = function()
    -- MiniAi
    require("mini.ai").setup({ n_lines = 500 })

    -- MiniBracketed
    require("mini.bracketed").setup()

    -- MiniBufremove
    require("mini.bufremove").setup()
    vim.keymap.set("n", "<leader>bd", function()
      require("mini.bufremove").delete()
    end, { desc = "Delete" })
    vim.keymap.set("n", "<leader>bw", function()
      require("mini.bufremove").wipeout()
    end, { desc = "Wipeout" })
    vim.keymap.set("n", "<leader>bh", function()
      require("mini.bufremove").unshow()
    end, { desc = "Hide" })

    -- MiniCursorword
    require("mini.cursorword").setup()

    -- MiniDiff
    require("mini.diff").setup({
      opts = {
        view = {
          style = "sign",
          signs = {
            add = "▎",
            change = "▎",
            delete = "",
          },
        },
      },
    })
    vim.keymap.set("n", "<leader>go", function()
      require("mini.diff").toggle_overlay(0)
    end, { desc = "Overlay" })

    -- MiniExtra
    require("mini.extra").setup()

    -- MiniFiles
    require("mini.files").setup()
    vim.keymap.set("n", "<leader>fe", function()
      require("mini.files").open()
    end, { desc = "Explorer" })

    -- MiniIcons
    require("mini.icons").setup()

    -- MiniIndentscope
    require("mini.indentscope").setup({
      symbol = "|",
      draw = { animation = require("mini.indentscope").gen_animation.none() },
    })

    -- MiniNotify
    require("mini.notify").setup({
      window = { winblend = 0 },
    })

    -- MiniPairs
    require("mini.pairs").setup()

    -- MiniPick
    require("mini.pick").setup()
    vim.keymap.set("n", "<leader>ff", function()
      require("mini.pick").builtin.files()
    end, { desc = "Files" })
    vim.keymap.set("n", "<leader>fc", function()
      local configDir = vim.fn.fnamemodify("~/.config/nvim", ":p")
      require("mini.pick").builtin.files({}, { source = { cwd = configDir } })
    end, { desc = "Config" })
    vim.keymap.set("n", "<leader>fg", function()
      require("mini.pick").builtin.grep_live()
    end, { desc = "Grep" })
    vim.keymap.set("n", "<leader>fb", function()
      require("mini.pick").builtin.buffers()
    end, { desc = "Buffers" })
    vim.keymap.set("n", "<leader>fh", function()
      require("mini.pick").builtin.help()
    end, { desc = "Help" })
    vim.keymap.set("n", "<leader>fd", function()
      require("mini.extra").pickers.diagnostic()
    end, { desc = "Diagnostics" })
    vim.keymap.set("n", "<leader>fo", function()
      require("mini.extra").pickers.oldfiles()
    end, { desc = "Old files" })
    vim.keymap.set("n", "<leader>fG", function()
      require("mini.extra").pickers.git_hunks()
    end, { desc = "Git hunks" })

    -- MiniSessions
    require("mini.sessions").setup()

    -- MiniStatusline
    require("mini.statusline").setup()

    -- MiniSurround
    require("mini.surround").setup()

    -- MiniTabline
    require("mini.tabline").setup()

    -- MiniStarter
    local starter = require("mini.starter")
    starter.setup({
      footer = os.date(),
      content_hooks = {
        starter.gen_hook.adding_bullet(""),
        starter.gen_hook.aligning("center", "center"),
      },
      items = {
        starter.sections.recent_files(5, false, false),
        { action = "Lazy check", name = "Plugins", section = "Actions" },
      },
      header = table.concat({
        [[  ___            ___  ]],
        [[ (o o)          (o o) ]],
        [[(  V  ) Neovim (  V  )]],
        [[--m-m------------m-m--]],
      }, "\n"),
    })
    vim.keymap.set("n", "<leader>td", function()
      starter.open()
    end, { desc = "Dashboard" })

    -- MiniClue
    local clue = require("mini.clue")
    clue.setup({
      triggers = {
        -- leader
        { mode = "n", keys = "<leader>" },
        { mode = "x", keys = "<leader>" },
        -- g key
        { mode = "n", keys = "g" },
        { mode = "x", keys = "g" },
        -- z key
        { mode = "n", keys = "z" },
        { mode = "x", keys = "z" },
        -- brackets
        { mode = "n", keys = "[" },
        { mode = "n", keys = "]" },
        -- quotes
        { mode = "n", keys = '"' },
        { mode = "x", keys = '"' },
        { mode = "n", keys = "`" },
        { mode = "x", keys = "`" },
        -- ctrl+w
        { mode = "n", keys = "<C-w>" },
        -- ctrl+i
        { mode = "i", keys = "<C-i>" },
        -- ctrl+r
        { mode = "n", keys = "<C-r" },
        { mode = "x", keys = "<C-r" },
      },
      clues = {
        clue.gen_clues.builtin_completion(),
        clue.gen_clues.registers(),
        clue.gen_clues.windows(),
        clue.gen_clues.marks(),
        clue.gen_clues.g(),
        clue.gen_clues.z(),
        { mode = "n", keys = "<leader>b", desc = "Buffers" },
        { mode = "n", keys = "<leader>f", desc = "Find" },
        { mode = "n", keys = "<leader>g", desc = "Git" },
        { mode = "n", keys = "<leader>c", desc = "Code" },
        { mode = "n", keys = "<leader>C", desc = "Comments" },
        { mode = "n", keys = "<leader>t", desc = "Toggle" },
        { mode = "n", keys = "<leader>x", desc = "Diagnostics" },
        { mode = "n", keys = "<leader>r", desc = "Rename" },
        { mode = "n", keys = "<leader>q", desc = "Sessions" },
      },
      window = {
        delay = 300,
        width = "auto",
      },
    })
  end,
}
