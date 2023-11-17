return {
    "rmagatti/alternate-toggler",
    event = { "BufReadPre", "BufNewFile" },
    config = function ()
        local alternate = require("alternate-toggler");
        alternate.setup({
            alternates = {
                ["=="] = "!="
            }
        })

        local keymap = vim.keymap;
        keymap.set('n', '<leader>ta', '<cmd>lua require("alternate-toggler").toggleAlternate()<CR>')
    end
}
