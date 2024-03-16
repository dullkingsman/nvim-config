local lsp = require('lsp-zero')

local lspconfig = require('lspconfig')

lsp.preset('recommended')

lsp.ensure_installed({
	"lua_ls",
	"rust_analyzer",
	"tsserver",
	"eslint"
})

local cmp = require("cmp")

local cmp_select = { behavior = cmp.SelectBehavior.Select }

local cmp_mappings = lsp.defaults.cmp_mappings({ 
	['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
	['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
	['<C-y>'] = cmp.mapping.confirm({ select = true }),
	["<C-Tab>"] = cmp.mapping.complete(),
})

lsp.set_preferences({
	sign_icons = { },
})

lspconfig.rust_analyzer.setup({
    settings = {
        ["rust-analyzer"] = {
            rustfmt = {
                overrideCommand = {"leptosfmt", "--stdin", "--rustfmt"}
            }
        }
    }
})

lsp.setup_nvim_cmp({
	mapping = cmp_mappings
})

lsp.on_attach(function(client, bufnr)
	local opts = { buffer = bufnr, remap = false }

	vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, opts)
	vim.keymap.set("n", "gtd", function() vim.lsp.buf.type_definition() end, opts)
	vim.keymap.set("n", "gi", function() vim.lsp.buf.implementation() end, opts)
    vim.keymap.set("n", "gr", function() vim.lsp.buf.references() end, opts)
	vim.keymap.set("n", "K", function() vim.lsp.buf.hover() end, opts)
	vim.keymap.set("n", "<leader>vws", function() vim.lsp.buf.workspace_symbol() end, opts)
	vim.keymap.set("n", "<leader>vd", function() vim.lsp.buf.open_float() end, opts)
	vim.keymap.set("n", "<leader>dj", function() vim.diagnostic.goto_next() end, opts)
	vim.keymap.set("n", "<leader>dk", function() vim.diagnostic.goto_prev() end, opts)
	vim.keymap.set("n", "<leader>dl", "<cmd>Telescope diagnostics<cr>", opts)
	vim.keymap.set("n", "<leader>oca", function() vim.lsp.buf.code_action() end, opts)
	vim.keymap.set("n", "<leader>r", function() vim.lsp.buf.rename() end, opts)
	vim.keymap.set("n", "C-h", function() vim.lsp.buf.signature_help() end, opts)
    vim.keymap.set('n', '<leader>f', function() vim.lsp.buf.format { async = true } end, opts)
end)

lsp.setup()
