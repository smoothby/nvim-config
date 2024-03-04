return {
	"nvim-lualine/lualine.nvim",
	config = function()
		require("lualine").setup({
			options = {
				theme = "onedark",
			},
			sections = { lualine_c = { require("auto-session.lib").current_session_name } },
		})
	end,
}
