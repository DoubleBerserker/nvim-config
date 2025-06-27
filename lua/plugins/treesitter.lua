return {
	{
		"nvim-treesitter/nvim-treesitter",
		tag = "v0.9.3",
		lazy = false,
		build = ":TSUpdate",
		config = function ()
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
