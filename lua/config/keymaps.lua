-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y', { desc = "copy from clipboard" })

vim.keymap.set({ "n", "v" }, "<leader>p", '"+p', { desc = "Paste from clipboard" })
-- Delete without yanking in normal mode (black hole register)
vim.keymap.set("n", "<leader>d", '"_d', { desc = "Delete without yank" })
vim.keymap.set("n", "<leader>D", '"_D', { desc = "Delete to EOL without yank" })

-- Delete without yanking in visual mode
vim.keymap.set("v", "<leader>d", '"_d', { desc = "Delete selection without yank" })

-- Optional: Delete lines without yank
vim.keymap.set("n", "<leader>dd", '"_dd', { desc = "Delete line without yank" })
