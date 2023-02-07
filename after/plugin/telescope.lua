local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fp', builtin.git_files, {})
vim.keymap.set('n', '<leader>fw', builtin.live_grep, {}) -- find word
vim.keymap.set('n', '<leader>fs', builtin.lsp_dynamic_workspace_symbols, {}) -- find symbol
vim.keymap.set('n', '<leader>fh', builtin.lsp_document_symbols, {}) -- find symbol
