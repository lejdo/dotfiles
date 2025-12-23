return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    },
    lazy = false,
    priority = 1000,
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                "pyright",
                "ts_ls",
                "clangd",
                "lua_ls",
            },
        })
    end,
}
