return {
	"stevearc/oil.nvim",
	dependencies = {
		{ "nvim-tree/nvim-web-devicons" },
	},
	lazy = false,
	opts = {
		default_file_explorer = true,
		skip_confirm_for_simple_edits = true,
		prompt_save_on_select_new_entry = false,
	},
	config = function()
		require("oil").setup({
			keymaps = {
				["-"] = { "actions.parent", mode = "n" },
				["g."] = { "actions.toggle_hidden", mode = "n" },
				["g?"] = { "actions.show_help", mode = "n" },
				["q"] = { "actions.close", mode = "n" },
			},
			view_options = {
				show_hidden = true,
			},
			save = false,
		})
	end,
	vim.keymap.set("n", "<leader>e", "<CMD>Oil<CR>", { desc = "Open Oil (current directory)" }),
}
