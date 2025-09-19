return {
	"stevearc/conform.nvim",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		require("conform").setup({
			formatters_by_ft = {
				lua = { "stylua" },
				php = { "php-cs-fixer" },
				java = { "google-java-format" },
				c = { "clang-format" },
				cpp = { "clang-format" },
				sh = { "shfmt" },
				html = { "prettier" },
				css = { "prettier" },
				javascript = { "prettier" },
				typescript = { "prettier" },
			},
			format_on_save = true,
		})
	end,
}
