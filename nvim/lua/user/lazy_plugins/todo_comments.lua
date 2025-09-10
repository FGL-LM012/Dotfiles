-- Highlight todo, notes, etc in comments
-- TODO: Refactor this function
-- FIXME: This crashes on empty input
-- PERF: Can be optimized with caching
-- HACK: Temporary workaround
-- NOTE: Uses experimental API
-- TEST: Add coverage for edge cases
return {
	"folke/todo-comments.nvim",
	event = "VimEnter",
	dependencies = { "nvim-lua/plenary.nvim" },
	opts = { signs = false },
}
