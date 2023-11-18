local keymap = vim.keymap;

-- Navigation between windows 
keymap.set('n', '<leader>wh', '<C-w>h', { noremap = true, silent = true});
keymap.set('n', '<leader>wk', '<C-w>k', { noremap = true, silent = true});
keymap.set('n', '<leader>wj', '<C-w>j', { noremap = true, silent = true});
keymap.set('n', '<leader>wl', '<C-w>l', { noremap = true, silent = true});

-- Select all
keymap.set('n', '<leader>aa', 'ggVG', { noremap = true, silent = true});
