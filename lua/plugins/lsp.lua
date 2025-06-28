-- Refer this to choose LSPs: https://microsoft.github.io/language-server-protocol/implementors/servers/

return {
	{
		"mason-org/mason.nvim",
		opts = {},
	},
	{
		"mason-org/mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"lua_ls",
				"pylsp",
				"gopls"
			}
		},
		dependencies = {"neovim/nvim-lspconfig"},
	}
}

