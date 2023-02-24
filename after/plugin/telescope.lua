local builtin = require('telescope.builtin')
require('telescope').setup {
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}
-- To get fzf loaded and working with telescope, you need to call
-- load_extension, somewhere after setup function:
require('telescope').load_extension('fzf')

--- Keymaps ---
vim.keymap.set('n', '<leader>fa', builtin.find_files, { desc = "Find All files" })
vim.keymap.set('n', '<leader>ff', builtin.git_files, { desc = "Find git Files" })
vim.keymap.set('n', '<leader>fw', builtin.live_grep, { desc = "Find Word (grep)" })
vim.keymap.set('n', '<leader>fs', builtin.lsp_dynamic_workspace_symbols, { desc = "Find workspace Symbol" })
vim.keymap.set('n', '<leader>fh', builtin.lsp_document_symbols, { desc = "Find symbol in file (Here)" })
vim.keymap.set('n', '<leader>fp', function() require ('telescope').extensions.projects.projects() end, { desc = "Find Project" })
