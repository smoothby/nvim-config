return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",
		dependencies = { "nvim-lua/plenary.nvim" },
		config = function()
			local builtin = require("telescope.builtin")
			vim.keymap.set("n", "<leader>sf", builtin.find_files, { desc = "Search Files" })
			vim.keymap.set("n", "<leader>sg", builtin.live_grep, { desc = "Search by Grep" })
			vim.keymap.set("n", "<leader>sb", builtin.buffers, { desc = "Search existing buffers" })
			vim.keymap.set("n", "<leader>sh", builtin.help_tags, { desc = "Search Help" })
			vim.keymap.set("n", "<leader>s.", builtin.oldfiles, { desc = "Search Recent Files" })
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown({}),
					},
				},
			})
			require("telescope").load_extension("ui-select")
		end,
	},
}
