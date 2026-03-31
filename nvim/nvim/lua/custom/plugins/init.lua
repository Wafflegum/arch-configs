-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
	"clangd/clangd",
	{ -- Adds git related signs to the gutter, as well as utilities for managing changes
		"lewis6991/gitsigns.nvim",
		opts = {
			signs = {
				add = { text = "+" },
				change = { text = "~" },
				delete = { text = "_" },
				topdelete = { text = "‾" },
				changedelete = { text = "~" },
			},
		},
	},
	{
		"NMAC427/guess-indent.nvim", -- Detect tabstop and shiftwidth automatically

		config = {
			auto_cmd = true, -- Set to false to disable automatic execution
			override_editorconfig = false, -- Set to true to override settings set by .editorconfig
			filetype_exclude = { -- A list of filetypes for which the auto command gets disabled
				"netrw",
				"tutor",
			},
			buftype_exclude = { -- A list of buffer types for which the auto command gets disabled
				"help",
				"nofile",
				"terminal",
				"prompt",
			},
			on_tab_options = { -- A table of vim options when tabs are detected
				["expandtab"] = true,
			},
			on_space_options = { -- A table of vim options when spaces are detected
				["expandtab"] = false,
				["tabstop"] = "detected", -- If the option value is 'detected', The value is set to the automatically detected indent size.
				["softtabstop"] = "detected",
				["shiftwidth"] = "detected",
			},
		},
	},
	{
		"uga-rosa/ccc.nvim",
		config = {
			highlighter = {
				auto_enable = true,
				lsp = true,
			}
		}
	},
	{
		"mattn/emmet-vim",
		ft = { "html", "css", "javascriptreact", "typescriptreact" },
	},

	{
		"startup-nvim/startup.nvim",
		dependencies = { "nvim-telescope/telescope.nvim", "nvim-lua/plenary.nvim", "nvim-telescope/telescope-file-browser.nvim" },
		config = function()
			require "startup".setup()
		end
	},
	{
		"propet/colorscheme-persist.nvim",
		lazy = false, -- Required: Load on startup to set the colorscheme
		config = true, -- Required: call setup() function
		dependencies = {
			"nvim-telescope/telescope.nvim",
			-- NOTE: Add your colorscheme plugins here if you want lazy.nvim
			-- to manage them directly within this plugin specification.
			-- Otherwise, ensure they are installed elsewhere in your config.
			-- Example:
			"folke/tokyonight.nvim",
			-- "Th3Whit3Wolf/space-nvim",
			"rebelot/kanagawa.nvim",
			

		},
		-- Set a keymap to open the picker
		keys = {
			{
			"<leader>sc", -- Or your preferred keymap
			function()
				require("colorscheme-persist").picker()
			end,
			mode = "n",
			desc = "Choose colorscheme",
			},
		},
		-- Optional: Configure the plugin (see Configuration section below)
		opts = {
			-- Add custom options here, for example:
			-- fallback = "space-nvim",
		},
	},

	{
	"dylanaraps/wal.vim",

	},


}
