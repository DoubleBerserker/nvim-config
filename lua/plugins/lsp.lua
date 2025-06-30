-- Refer this to choose LSPs: https://microsoft.github.io/language-server-protocol/implementors/servers/

return{
	"neovim/nvim-lspconfig",
	dependencies = {
		"mason-org/mason.nvim",
		"mason-org/mason-lspconfig.nvim",

		-- Autocomplete
		'hrsh7th/cmp-nvim-lsp',
		'hrsh7th/cmp-buffer',
		'hrsh7th/cmp-path',
		'hrsh7th/cmp-cmdline',
		'hrsh7th/nvim-cmp',

		-- Snippet Engine
		'L3MON4D3/LuaSnip',
		'saadparwaiz1/cmp_luasnip',
	},

	config = function()
		require("mason").setup()
		require("mason-lspconfig").setup({
			ensure_installed = {
				"lua_ls",
				"pylsp",
				"gopls"
			},
		})

		local cmp = require("cmp")
		local cmp_select = { behavior = cmp.SelectBehavior.Select }
		cmp.setup({
			snippet = {
				-- Snippet Engine
				expand = function(args)
					require('luasnip').lsp_expand(args.body)
				end,
			},
			mapping = cmp.mapping.preset.insert({
				['<C-p>'] = cmp.mapping.select_prev_item(cmp_select),
				['<C-n>'] = cmp.mapping.select_next_item(cmp_select),
				['<C-y>'] = cmp.mapping.confirm({select = true }),
				['<C-Space>'] = cmp.mapping.complete(),
			}),
			sources = cmp.config.sources({
				{ name = 'nvim_lsp' },
				{ name = 'luasnip' }, -- For luasnip users.
			}, {
					{ name = 'buffer' },
				})
		})

	end
}

-- return {
-- 	{
-- 		"mason-org/mason.nvim",
-- 		opts = {},
-- 	},
-- 	{
-- 		"mason-org/mason-lspconfig.nvim",
-- 		opts = {
-- 			ensure_installed = {
-- 				"lua_ls",
-- 				"pylsp",
-- 				"gopls"
-- 			}
-- 		},
-- 		dependencies = {"neovim/nvim-lspconfig"},
-- 	}
-- }

