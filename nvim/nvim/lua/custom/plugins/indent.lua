return {
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl", -- important for v3
		opts = {
			indent = {
				char = "│", -- vertical guide
				tab_char = "│", -- vertical for tabs too
			},
			scope = {
				enabled = true, -- show current scope highlight
				show_start = true,
				show_end = false,
			},
			exclude = {
				filetypes = {
					"help",
					"alpha",
					"dashboard",
					"neo-tree",
					"lazy",
					"mason",
					"toggleterm",
				},
			},
		},
	},
}
