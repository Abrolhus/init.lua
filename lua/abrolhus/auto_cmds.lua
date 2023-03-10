vim.api.nvim_create_augroup('highlight_yank', { clear = true })
vim.api.nvim_create_autocmd('TextYankPost', {
    group = 'highlight_yank', pattern = '*',
    callback = function()
        vim.highlight.on_yank({ on_visual = true, timeout = 100 })
    end
})
-- highlight-symbol-on-cursor-hold
vim.api.nvim_create_augroup('cursor_hold_word', { clear = true })
vim.api.nvim_create_autocmd('cursorhold',
    {
        group = 'cursor_hold_word',
        pattern = '*',
        -- buffer = 0,
        callback = function()
            if vim.lsp.buf_is_attached() then
                vim.lsp.buf.document_highlight()
            end
        end
    }
)
-- delete trailing whitespaces on save
local Whitespace_group = vim.api.nvim_create_augroup("Whitespace", {})
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
    group = Whitespace_group,
    pattern = "*",
    command = "%s/\\s\\+$//e",
})
