return { -- Autocompletion
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    "saadparwaiz1/cmp_luasnip",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-buffer",
    "micangl/cmp-vimtex",
    {
      "garymjr/nvim-snippets",
      opts = {},
    },
  },
  config = function()
    local cmp = require("cmp")
    cmp.setup({
      snippet = {
        expand = function(args)
          vim.snippet.expand(args.body)
        end,
      },
      completion = { completeopt = "menu,menuone,noinsert" },
      mapping = cmp.mapping.preset.insert({
        ["<C-n>"] = cmp.mapping.select_next_item(),
        ["<C-p>"] = cmp.mapping.select_prev_item(),
        ["<C-b>"] = cmp.mapping.scroll_docs(-4),
        ["<C-f>"] = cmp.mapping.scroll_docs(4),
        ["<C-y>"] = cmp.mapping.confirm({ select = true }),
        ["<C-Space>"] = cmp.mapping.complete({}),
        ["<C-l>"] = cmp.mapping(function()
          if vim.snippet.active({ direction = 1 }) then
            vim.schedule(function()
              vim.snippet.jump(1)
            end)
          end
        end, { "i", "s" }),
        ["<C-h>"] = cmp.mapping(function()
          if vim.snippet.active({ direction = -1 }) then
            vim.schedule(function()
              vim.snippet.jump(-1)
            end)
          end
        end, { "i", "s" }),
      }),
      sources = {
        { name = "snippets" },
        { name = "lazydev" },
        { name = "nvim_lsp" },
        { name = "cmp-vimtex" },
        { name = "path" },
        { name = "buffer" },
      },
    })
  end,
}
