return {
  "andrewferrier/wrapping.nvim",
  config = function()
    local wrap = require("wrapping")
    local opts = {
      create_keymaps = false,
      auto_set_mode_filetype_allowlist = {
        "latex",
        "tex",
        "markdown",
      },
    }
    wrap.setup(opts)
    -- keymaps
    vim.keymap.set("n", "<leader>tw",
      wrap.toggle_wrap_mode,
      { desc = "Wrap Mode" })
  end,
}
