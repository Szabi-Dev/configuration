local keymap = vim.keymap;

local opts = { noremap = true, silent = true}

-- Navigation between windows 
keymap.set('n', '<leader>wh', '<C-w>h', opts );
keymap.set('n', '<leader>wk', '<C-w>k', opts );
keymap.set('n', '<leader>wj', '<C-w>j', opts );
keymap.set('n', '<leader>wl', '<C-w>l', opts );

-- Select all
keymap.set('n', '<leader>aa', 'ggVG', opts );

-- Write all
keymap.set('n', '<leader>wa', '<Cmd>wa<cr>', opts);  
