return {
	"folke/trouble.nvim",
	opts = {}, -- for default options, refer to the configuration section for custom setup.
	cmd = "Trouble",
	icons = false,
	keys = {
		-- Default Keybinds of Trouble
		{
			"<leader>tt", -- Default was "<leader>xx"
			"<cmd>Trouble diagnostics toggle<cr>",
			desc = "Diagnostics (Trouble)",
		},
--		{
--			"<leader>cs",
--
--			desc = "Symbols (Trouble)",
--		},
		{
			"<leader>cl",
			"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
			desc = "LSP Definitions / references / ... (Trouble)",
		},
		{
			"<leader>xL",
			"<cmd>Trouble loclist toggle<cr>",
			desc = "Location List (Trouble)",
		},
		{
			"<leader>xQ",
			"<cmd>Trouble qflist toggle<cr>",
			desc = "Quickfix List (Trouble)",
		},
	},

	config = function()
		vim.keymap.set("n", "<leader>tt", function()
                	require("trouble").toggle("diagnostics")
		end, { desc =  "Toggle Troble Diagnostics" })

		vim.keymap.set("n", "[d", function()
                	require("trouble").next("diagnostics")
		end, { desc =  "Go to next item" })

		vim.keymap.set("n", "]d", function()
                	require("trouble").prev("diagnostics")
		end, { desc =  "Go to previous item" })

	end
}
