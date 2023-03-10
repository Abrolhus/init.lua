-- Learn the keybindings, see :help lsp-zero-keybindings
-- Learn to configure LSP servers, see :help lsp-zero-api-showcase
local lsp = require('lsp-zero')
lsp.preset('recommended')
local cmp = require('cmp')
local lspkind = require('lspkind')

require "lsp_signature".setup()

local cmp_select = { behavior = cmp.SelectBehavior.Select }
local format = lspkind.cmp_format({
    mode = 'symbol_text', -- show only symbol annotations
    preset = 'codicons',
    maxwidth = 50, -- prevent the popup from showing more than provided characters (e.g 50 will not show more than 50 characters)
    ellipsis_char = '...' -- when popup menu exceed maxwidth, the truncated part would show ellipsis_char instead (must define maxwidth first)
})


local cmp_mappings = lsp.defaults.cmp_mappings({
    ['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
    ['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
    ['<C-y>'] = cmp.mapping.confirm({ select = true }),
    ["<C-Space>"] = cmp.mapping.complete(),
})
cmp_mappings['<Tab>'] = nil
cmp_mappings['<S-Tab>'] = nil

lsp.setup_nvim_cmp({
    mapping = cmp_mappings,
    formatting = {
        format = format,
    },
})
-- (Optional) Configure lua language server for neovim
lsp.nvim_workspace()


lsp.on_attach(function(client, bufnr)
    local navic = require("nvim-navic")
    -- local opts = { buffer = bufnr, remap = false }

    if client.server_capabilities.documentSymbolProvider then
        navic.attach(client, bufnr)
    end
    require "lsp_signature".on_attach({
        bind = true, -- This is mandatory, otherwise border config won't get registered.
        handler_opts = {
            border = "rounded"
        }
    }, bufnr)

    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, { buffer = bufnr, remap = false, desc = "Go to Definition" })
    vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, { buffer = bufnr, remap = false, desc = "Go to References" })
    vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, { buffer = bufnr, remap = false, desc = "Go to Implementation" })
    vim.keymap.set("n", "gt", function() vim.lsp.buf.type_definition() end, { buffer = bufnr, remap = false, desc = "Go to Type definition" })
    vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end, { buffer = bufnr, remap = false, desc = "Go to Declaration" })
    vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, { buffer = bufnr, remap = false, desc = "Hover" }) -- similar to 'K' in help menus
    -- vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, {buffer=bufnr, remap = false, desc = "})
    vim.keymap.set("n", "<leader>ev", function() vim.diagnostic.open_float() end, { buffer = bufnr, remap = false, desc = "Error View" })
    vim.keymap.set("n", "<leader>en", function() vim.diagnostic.goto_next() end, { buffer = bufnr, remap = false, desc = "Error Next" })
    vim.keymap.set("n", "<leader>ep", function() vim.diagnostic.goto_prev() end, { buffer = bufnr, remap = false, desc = "Error Prev" })
    vim.keymap.set("n", "<leader>ef", function() vim.lsp.buf.code_action({ only = "quickfix" }) end, {desc = "Error Fix"}) -- diagnostic fix
    vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, { buffer = bufnr, remap = false, desc = "signature Help" })
    vim.keymap.set("n", "<leader>lf", function() vim.lsp.buf.format() end, { buffer = bufnr, remap = false, desc = "Lsp Format"}) -- format entire buffer
    vim.keymap.set("n", "<leader>la", function() vim.lsp.buf.code_action() end, { buffer = bufnr, remap = false, desc = "Lsp Action" }) -- code action!
    vim.keymap.set("n", "<leader>lr", function() vim.lsp.buf.rename() end, { buffer = bufnr, remap = false, desc = "Lsp Rename" }) -- rename symbol
end)

lsp.setup()

-- vim.diagnostic.config({
-- virtual_text = true
-- })
