return {
	{
		"nvim-treesitter/nvim-treesitter",
		lazy = false,
		tags = "v0.10.0",
		build = ":TSUpdate",
		config = function ()
			-- Tried out 'main' branch but the following config breaks Telescope, so using 'master' v0.10.0 instead
			-- require("nvim-treesitter").install({'c', 'lua', 'vim', 'cpp', 'go', 'bash', 'dockerfile', 'html', 'javascript', 'json', 'python', 'typescript'})
		  local configs = require("nvim-treesitter.configs")

		  configs.setup({
		    ensure_insalled = {'c', 'lua', 'vim', 'cpp', 'go', 'bash', 'dockerfile', 'html', 'javascript', 'json', 'python', 'typescript'},
		    sync_install = false,
		    auto_install = true,
		    highlight = { enable = true, additional_vim_regex_highlighting = false},
		    indent = { enable = true },
		  })
	  	end
	}
}
