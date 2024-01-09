return {
    "neovim/nvim-lspconfig",
    event = { "BufReadPre", "BufNewFile" },
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        { "antosha417/nvim-lsp-file-operations", config = true },
    },
    config = function()
        -- import lspconfig plugin
        local lspconfig = require("lspconfig")

        -- import cmp-nvim-lsp plugin
        local cmp_nvim_lsp = require("cmp_nvim_lsp")
        local capabilities = cmp_nvim_lsp.default_capabilities()

        local lsp_common = require("szabolcs.core.lsp-common")
        lsp_common.set_signs()

        lspconfig["angularls"].setup({
            capabilities = capabilities,
            on_attach = lsp_common.on_attach,
        })

        lspconfig["html"].setup({
            capabilities = capabilities,
            on_attach = lsp_common.on_attach,
        })

        lspconfig["tsserver"].setup({
            capabilities = capabilities,
            on_attach = lsp_common.on_attach,
        })

        lspconfig["cssls"].setup({
            capabilities = capabilities,
            on_attach = lsp_common.on_attach,
        })

        lspconfig["lua_ls"].setup({
            capabilities = capabilities,
            on_attach = lsp_common.on_attach,
            settings = { -- custom settings for lua
                Lua = {
                    -- make the language server recognize "vim" global
                    diagnostics = {
                        globals = { "vim" },
                    },
                    workspace = {
                        -- make language server aware of runtime files
                        library = {
                            [vim.fn.expand("$VIMRUNTIME/lua")] = true,
                            [vim.fn.stdpath("config") .. "/lua"] = true,
                        },
                    },
                },
            },
        })
    end,
}

