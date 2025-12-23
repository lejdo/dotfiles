---@diagnostic disable: undefined-global
return {
  {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()

      -- Python
      vim.lsp.config.pyright = {}

      -- TypeScript / JavaScript
      vim.lsp.config.ts_ls = {}

      -- C / C++
      vim.lsp.config.clangd = {}

      -- Lua (Neovim config)
      vim.lsp.config.lua_ls = {
        settings = {
          Lua = {
            diagnostics = {
              globals = { "vim" },
            },
            workspace = {
              library = vim.api.nvim_get_runtime_file("", true),
              checkThirdParty = false,
            },
            telemetry = { enable = false },
          },
        },
      }

    end,
  },
}

