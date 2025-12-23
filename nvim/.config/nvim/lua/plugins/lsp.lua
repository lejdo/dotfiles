return {
  {
    "neovim/nvim-lspconfig",
    event = "BufReadPre",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      local lspconfig = require("lspconfig")

      -- Python
      lspconfig.pyright.setup({})

      -- TypeScript / JavaScript
      lspconfig.ts_ls.setup({})  -- updated

      -- C / C++
      lspconfig.clangd.setup({})

      -- Lua
      lspconfig.lua_ls.setup({
        settings = {
          Lua = {
            diagnostics = { globals = { "vim" } },
            workspace = { library = vim.api.nvim_get_runtime_file("", true) },
            telemetry = { enable = false },
          },
        },
      })
    end,
  },
}
