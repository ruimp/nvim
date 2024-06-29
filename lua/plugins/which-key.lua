return {
  "folke/which-key.nvim",
  event = "VimEnter",
  config = function()
    require("which-key").setup()
    -- normal mode
    require("which-key").register({
      c = { name = "code", _ = "which_key_ignore" },
      f = { name = "find", _ = "which_key_ignore" },
      -- d = { name = "document", _ = "which_key_ignore" },
      r = { name = "rename", _ = "which_key_ignore" },
      -- w = { name = "workspace", _ = "which_key_ignore" },
      t = { name = "toggle", _ = "which_key_ignore" },
      -- h = { name = "git hunk", _ = "which_key_ignore" },
    }, { prefix = "<leader>" })
    -- -- visual mode
    -- require("which-key").register({
    --   ["<leader>h"] = { "git hunk" },
    -- }, { mode = "v" })
  end,
}
