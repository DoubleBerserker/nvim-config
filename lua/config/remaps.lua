vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", {desc = "Move selection down"})
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", {desc = "Move selection up"})
vim.keymap.set('n', '<leader>pv', vim.cmd.Ex, {desc = "Go to Netrw Explorer"})

vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = "Recenter cursor after scrolling down half page" })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = "Recenter cursor after scrolling up half page" })

vim.keymap.set('n', 'n', 'nzzzv', { desc = "Recenter cursor after using find"})
vim.keymap.set('n', 'N', 'Nzzzv', { desc = "Recenter cursor after using find"})

vim.keymap.set('x', '<leader>p', "\"_dP", { desc = "Send deleted text to void buffer; doesn't replace paste buffer"})

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace word under cursor in entire file" })

-- QuickFix Remaps
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- LSP Remaps
local autocmd = vim.api.nvim_create_autocmd
autocmd('LspAttach', {
    callback = function(e)
        local opts = { buffer = e.buf }
        vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts, { desc = "LSP: Go to definition" })
        vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts, { desc = "LSP: Show hover information" })
        vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, { desc = "LSP: Search workspace symbols" })
        vim.keymap.set("n", "<leader>vd", function() vim.diagnostic.open_float() end, { desc = "LSP: Show diagnostics" })
        vim.keymap.set("n", "<leader>vca", function() vim.lsp.buf.code_action() end, { desc = "LSP: Code action" })
        vim.keymap.set("n", "<leader>vrr", function() vim.lsp.buf.references() end, { desc = "LSP: Show references" })
        vim.keymap.set("n", "<leader>vrn", function() vim.lsp.buf.rename() end, { desc = "LSP: Rename symbol" })
        vim.keymap.set("i", "<C-h>", function() vim.lsp.buf.signature_help() end, { desc = "LSP: Show signature help" })
        vim.keymap.set("n", "[d", function() vim.diagnostic.goto_next() end, { desc = "LSP: Go to next diagnostic" })
        vim.keymap.set("n", "]d", function() vim.diagnostic.goto_prev() end, { desc = "LSP: Go to previous diagnostic" })
    end
})
