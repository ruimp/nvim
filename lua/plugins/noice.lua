return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    lsp = {
      override = {
        ["vim.lsp.util.convert_input_to_markdown_lines"] = true,
        ["vim.lsp.util.stylize_markdown"] = true,
        ["cmp.entry.get_documentation"] = true,
      },
    },
    presets = {
      bottom_search = true,
      command_palette = true,
      long_message_to_split = true, -- long messages will be sent to a split
      lsp_doc_border = false, -- add a border to hover docs and signature help
    },
  },
  dependencies = { "MunifTanjim/nui.nvim" },
}
