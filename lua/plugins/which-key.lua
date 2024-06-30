return {
  "folke/which-key.nvim",
  event = "VimEnter",
  config = function()
    require("which-key").setup()
    -- normal mode
    require("which-key").register({
      b = { name = "Buffers", _ = "which_key_ignore" },
      c = { name = "Code", _ = "which_key_ignore" },
      f = { name = "Find", _ = "which_key_ignore" },
      g = { name = "Git", _ = "which_key_ignore" },
      -- d = { name = "document", _ = "which_key_ignore" },
      q = { name = "Session", _ = "which_key_ignore" },
      r = { name = "Rename", _ = "which_key_ignore" },
      -- w = { name = "workspace", _ = "which_key_ignore" },
      t = { name = "Toggle", _ = "which_key_ignore" },
      -- h = { name = "git hunk", _ = "which_key_ignore" },
    }, { prefix = "<leader>" })
    -- -- visual mode
    -- require("which-key").register({
    --   ["<leader>h"] = { "git hunk" },
    -- }, { mode = "v" })
  end,
}
