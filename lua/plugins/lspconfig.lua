return {
  "neovim/nvim-lspconfig",
  config = function()
    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("custom-lsp-attach", { clear = true }),
      callback = function(event)
        local map = function(keys, func, desc)
          vim.keymap.set("n", keys, func, { buffer = event.buf, desc = "LSP: " .. desc })
        end
        map("<leader>cr", vim.lsp.buf.rename, "Rename")
        map("<leader>ca", vim.lsp.buf.code_action, "Code Action")
        map("K", vim.lsp.buf.hover, "Hover Documentation")
        map("gD", vim.lsp.buf.declaration, "Goto Declaration")

        local client = vim.lsp.get_client_by_id(event.data.client_id)
        if client and client.server_capabilities.documentHighlightProvider then
          local highlight_augroup = vim.api.nvim_create_augroup("custom-lsp-highlight", { clear = false })
          vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
            buffer = event.buf,
            group = highlight_augroup,
            callback = vim.lsp.buf.document_highlight,
          })

          vim.api.nvim_create_autocmd({ "CursorMoved", "CursorMovedI" }, {
            buffer = event.buf,
            group = highlight_augroup,
            callback = vim.lsp.buf.clear_references,
          })

          vim.api.nvim_create_autocmd("LspDetach", {
            group = vim.api.nvim_create_augroup("custom-lsp-detach", { clear = true }),
            callback = function(event2)
              vim.lsp.buf.clear_references()
              vim.api.nvim_clear_autocmds({ group = "custom-lsp-highlight", buffer = event2.buf })
            end,
          })
        end
      end,
    })

    -- Load capabilities
    local capabilities = vim.lsp.protocol.make_client_capabilities()

    -- Typst LSP
    require("lspconfig").tinymist.setup({
      offset_encoding = "utf-8",
      single_file_support = true,
      capabilities = capabilities,
      root_dir = function()
        return vim.fn.getcwd()
      end,
      settings = {
        exportPdf = "onSave",
        formatterMode = "typstyle",
        systemFonts = true,
        formatterPrintWidth = 80,
      },
    })

    -- Lua LSP
    require("lspconfig").lua_ls.setup({})

    -- Enable the following language servers
    -- local servers = {
    -- lua_ls = {
    --   settings = {
    --     Lua = {
    --       completion = {
    --         callSnippet = "Replace",
    --       },
    --     },
    --   },
    -- },
    -- texlab = {
    --   keys = {
    --     { "<leader>K", "<plug>(vimtex-doc-package)", desc = "Vimtex Docs", silient = true },
    --   },
    --   settings = {
    --     texlab = {
    --       diagnostics = {
    --         ignoredPatterns = {
    --           "Unused entry",
    --         },
    --       },
    --     },
    --   },
    -- },
  end,
}
