return {
    {
        "nvim-treesitter/nvim-treesitter",
        event = { "BufReadPre", "BufNewFile" },
        build = ":TSUpdate",
        dependencies = {
            "nvim-treesitter/nvim-treesitter-textobjects",
            "windwp/nvim-ts-autotag",
        },
        config = function()
            -- import nvim-treesitter plugin
            local treesitter = require("nvim-treesitter.configs")

            -- configure treesitter
            treesitter.setup({ -- enable syntax highlighting
                highlight = { enable = true, },
                indent = { enable = true },
                autotag = { enable = true, },

                ensure_installed = {
                    "java",
                    "lua",
                    "typescript",
                    "html",
                    "css",
                    "scss",
                },
                incremental_selection = {
                    enable = true,
                    keymaps = {
                        init_selection = "<leader>s",
                        node_incremental = "<leader>s",
                        scope_incremental = false,
                        node_decremental = "<bs>",
                    },
                },
            })
        end,
    },
}
