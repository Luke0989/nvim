return {
	"folke/tokyonight.nvim",
	priority = 1000,
	config = function()
		require("tokyonight").setup({
			style = "storm",
			terminal_colors = true,
			styles = {
				comments = { italic = true },
				keywords = { italic = true },
				functions = { bold = true },
				variables = {},
			},
			sidebars = { "qf", "help" },
			on_highlights = function(hl, c)
				hl.CursorLine = { bg = c.bg_dark }
				hl.Normal = { bg = c.bg_dark }
			end,
		})

		vim.cmd("colorscheme tokyonight")
	end,
}
