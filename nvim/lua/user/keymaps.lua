-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")

-- Diagnostic keymaps
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" })

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- AZERTY specific mappings
vim.keymap.set({ "n", "v" }, "&", "1") -- & -> 1
vim.keymap.set({ "n", "v" }, "é", "2") -- é -> 2
vim.keymap.set({ "n", "v" }, '"', "3") -- " -> 3
vim.keymap.set({ "n", "v" }, "'", "4") -- ' -> 4
vim.keymap.set({ "n", "v" }, "(", "5") -- ( -> 5
vim.keymap.set({ "n", "v" }, "-", "6") -- - -> 6
vim.keymap.set({ "n", "v" }, "è", "7") -- è -> 7
vim.keymap.set({ "n", "v" }, "_", "8") -- _ -> 8
vim.keymap.set({ "n", "v" }, "ç", "9") -- ç -> 9
vim.keymap.set({ "n", "v" }, "à", "0") -- à -> 0
vim.keymap.set({ "n", "v" }, "ù", "%") -- ù -> %

-- Center cursor when scrolling half-page up/down
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- Move selected lines up/down in visual mode
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Center and unfold when jumping between search results
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Paste over selection without losing clipboard content (deletes to black hole register)
vim.keymap.set("x", "<leader>p", [["_dP]])
