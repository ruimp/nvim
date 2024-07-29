-- ── Mini plugin family ──────────────────────────────────────────────
return {
  "echasnovski/mini.nvim",
  lazy = false,
  config = function()
    -- ── MiniAi ──────────────────────────────────────────────────────────
    require("mini.ai").setup({ n_lines = 500 })

    -- ── MiniBracketed ───────────────────────────────────────────────────
    require("mini.bracketed").setup()

    -- ── MiniBufremove ───────────────────────────────────────────────────
    local bufremove = require("mini.bufremove")
    bufremove.setup()

    vim.keymap.set("n", "<leader>bd", function()
      bufremove.delete()
    end, { desc = "Delete" })
    vim.keymap.set("n", "<leader>bw", function()
      bufremove.wipeout()
    end, { desc = "Wipeout" })
    vim.keymap.set("n", "<leader>bh", function()
      bufremove.unshow()
    end, { desc = "Hide" })

    -- ── MiniCursorword ──────────────────────────────────────────────────
    require("mini.cursorword").setup()

    -- ── MiniDiff ────────────────────────────────────────────────────────
    local diff = require("mini.diff")
    diff.setup({
      opts = {
        view = {
          style = "sign",
          signs = { add = "▎", change = "▎", delete = "" },
        },
      },
    })
    vim.keymap.set("n", "<leader>go", function()
      diff.toggle_overlay(0)
    end, { desc = "Overlay" })

    -- ── MiniExtra ───────────────────────────────────────────────────────
    local extra = require("mini.extra")
    require("mini.extra").setup()

    vim.keymap.set("n", "<leader>fd", function()
      extra.pickers.diagnostic()
    end, { desc = "Diagnostics" })

    vim.keymap.set("n", "<leader>fo", function()
      extra.pickers.oldfiles()
    end, { desc = "Old files" })

    vim.keymap.set("n", "<leader>fG", function()
      extra.pickers.git_hunks()
    end, { desc = "Git hunks" })

    vim.keymap.set("n", "<leader>fH", function()
      extra.pickers.hipatterns()
    end, { desc = "Highlights" })

    -- ── MiniFiles ───────────────────────────────────────────────────────
    local files = require("mini.files")

    -- Filter hides dotfiles
    local dotFilter = function(fs_entry)
      return not vim.startswith(fs_entry.name, ".")
    end

    files.setup({ content = { filter = dotFilter } })

    vim.keymap.set("n", "<leader>fe", function()
      files.open()
    end, { desc = "Explorer" })

    -- ── MiniHipatterns ──────────────────────────────────────────────────
    local hipatterns = require("mini.hipatterns")
    hipatterns.setup({
      highlighters = {
        -- Highlight standalone 'FIXME', 'HACK', 'TODO', 'NOTE'
        fixme = { pattern = "%f[%w]()FIXME()%f[%W]", group = "MiniHipatternsFixme" },
        hack = { pattern = "%f[%w]()HACK()%f[%W]", group = "MiniHipatternsHack" },
        todo = { pattern = "%f[%w]()TODO()%f[%W]", group = "MiniHipatternsTodo" },
        note = { pattern = "%f[%w]()NOTE()%f[%W]", group = "MiniHipatternsNote" },
        -- Highlight hex color strings (`#rrggbb`) using that color
        hex_color = hipatterns.gen_highlighter.hex_color(),
      },
    })

    -- ── MiniIcons ───────────────────────────────────────────────────────
    require("mini.icons").setup()

    -- ── MiniIndentscope ─────────────────────────────────────────────────
    local indentscope = require("mini.indentscope")
    indentscope.setup({
      symbol = "|",
      draw = { animation = indentscope.gen_animation.none() },
    })

    -- ── MiniJump2d ──────────────────────────────────────────────────────
    require("mini.jump2d").setup({ view = { dim = true } })

    -- ── MiniMisc ────────────────────────────────────────────────────────
    local misc = require("mini.misc")
    misc.setup()
    misc.setup_auto_root()

    -- ── MiniNotify ──────────────────────────────────────────────────────
    require("mini.notify").setup({ window = { winblend = 0 } })

    -- ── MiniOperators ───────────────────────────────────────────────────
    require("mini.operators").setup()

    -- ── MiniPairs ───────────────────────────────────────────────────────
    require("mini.pairs").setup()

    -- ── MiniPick ────────────────────────────────────────────────────────
    local pick = require("mini.pick")
    pick.setup()

    vim.keymap.set("n", "<leader>ff", function()
      pick.builtin.files()
    end, { desc = "Files" })

    vim.keymap.set("n", "<leader>fc", function()
      local configDir = vim.fn.expand("$HOME/.config/nvim")
      pick.builtin.files({}, { source = { cwd = configDir } })
    end, { desc = "Config" })

    vim.keymap.set("n", "<leader>fg", function()
      pick.builtin.grep_live()
    end, { desc = "Grep" })

    vim.keymap.set("n", "<leader>fb", function()
      pick.builtin.buffers()
    end, { desc = "Buffers" })

    vim.keymap.set("n", "<leader>fh", function()
      pick.builtin.help()
    end, { desc = "Help" })

    -- ── MiniSessions ────────────────────────────────────────────────────
    local sessions = require("mini.sessions")
    sessions.setup()

    vim.keymap.set("n", "<leader>s", function()
      sessions.select()
    end, { desc = "Sessions" })

    -- ── MiniStatusline ──────────────────────────────────────────────────
    require("mini.statusline").setup()

    -- ── MiniSurround ────────────────────────────────────────────────────
    require("mini.surround").setup()

    vim.keymap.set({ "n", "x" }, "s", "<nop>")

    -- ── MiniTabline ─────────────────────────────────────────────────────
    require("mini.tabline").setup()

    -- ── MiniStarter ─────────────────────────────────────────────────────
    local starter = require("mini.starter")
    starter.setup({
      footer = os.date(),
      content_hooks = {
        starter.gen_hook.adding_bullet(""),
        starter.gen_hook.aligning("center", "center"),
      },
      items = {
        starter.sections.sessions(5, true),
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

    -- ── MiniClue ────────────────────────────────────────────────────────
    local clue = require("mini.clue")
    clue.setup({
      triggers = {
        -- leader
        { mode = "n", keys = "<leader>" },
        { mode = "x", keys = "<leader>" },
        { mode = "n", keys = "<localleader>" },
        { mode = "x", keys = "<localleader>" },
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
        -- { mode = "n", keys = "<leader>q", desc = "Sessions" },
      },
      window = { delay = 300, width = "auto" },
    })
  end,
}
