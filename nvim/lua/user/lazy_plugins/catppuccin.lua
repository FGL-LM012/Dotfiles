return {
	"catppuccin/nvim",
	name = "catppuccin",
	priority = 1000,
	config = function()
		require("catppuccin").setup({
			flavour = "mocha",
			transparent_background = false,
			integrations = {
				treesitter = true,
				native_lsp = {
					enabled = true,
					virtual_text = {
						errors = { "italic" },
						hints = { "italic" },
						warnings = { "italic" },
						information = { "italic" },
					},
					underlines = {
						errors = { "underline" },
						hints = { "underline" },
						warnings = { "underline" },
						information = { "underline" },
					},
				},
				cmp = true,
				gitsigns = true,
				telescope = true,
				which_key = true,
				nvimtree = true,
				mini = true,
			},
			custom_highlights = function(colors)
				return {
					LineNr = { fg = "#9399b2" }, -- relative lines color
				}
			end,
		})

		-- set colorscheme
		vim.cmd.colorscheme("catppuccin")
	end,
}
