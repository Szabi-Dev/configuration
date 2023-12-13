LSP = {}
function LSP.on_attach(_, bufnr) 
    local keymap = vim.keymap -- for conciseness
    local opts = { noremap = true, silent = true }

    opts.buffer = bufnr

    opts.desc = "Show LSP references"
    keymap.set("n", "gR", "<cmd>Telescope lsp_references<CR>", opts) -- show definition, references
end

function LSP.set_signs()
    local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
    for type, icon in pairs(signs) do
        local hl = "DiagnosticSign" .. type
        vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end
end

return LSP;
