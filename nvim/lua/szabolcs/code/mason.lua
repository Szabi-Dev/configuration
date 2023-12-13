return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        require("mason").setup()
        require("mason-lspconfig").setup({
            ensure_installed = {
                -- java
                "jdtls",
                -- lua 
                "lua_ls",
                -- angular
                "html",
                "cssls",
                "tsserver",
                "angularls"
            },
            automatic_installation = true,
        })
    end
}
