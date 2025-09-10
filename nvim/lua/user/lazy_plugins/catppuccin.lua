return {
	"catppuccin/nvim",
	name = "catppuccin", -- optional, avoids name clashes
	priority = 1000, -- load before all other plugins
	config = function()
		require("catppuccin").setup({
			flavour = "mocha", -- latte, frappe, macchiato, mocha
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
            }
		})

		-- set colorscheme
		vim.cmd.colorscheme("catppuccin")
	end,
}
