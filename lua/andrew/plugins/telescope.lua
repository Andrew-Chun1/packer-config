local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {}) --fuzzy finder
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {}) --search term
vim.keymap.set('n', '<C-p>', builtin.git_files, {}) --search git

