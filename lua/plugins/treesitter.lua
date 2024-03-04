return {
	"nvim-treesitter/nvim-treesitter",
	build = ":TSUpdate",
	config = function()
		local config = require("nvim-treesitter.configs")
		config.setup({
			auto_install = true,
			ensure_installed = {
				"c",
				"lua",
				"vim",
				"vimdoc",
				"query",
				"html",
				"css",
				"scss",
				"java",
				"javascript",
				"typescript",
			},
			highlight = { enable = true },
			indent = { enable = true },
		})
	end,
}
