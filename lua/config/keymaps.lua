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

-- Copy absolute file path
vim.keymap.set("n", "<leader>cp", function()
  local path = vim.fn.expand("%:p")
  vim.fn.setreg("+", path)
  vim.notify("📋 Copied full path: " .. path)
end, { desc = "Copy full file path" })

-- Copy relative file path (to cwd)
vim.keymap.set("n", "<leader>cr", function()
  local path = vim.fn.expand("%")
  vim.fn.setreg("+", path)
  vim.notify("📋 Copied relative path: " .. path)
end, { desc = "Copy relative file path" })

-- Copy directory of current file
vim.keymap.set("n", "<leader>cd", function()
  local dir = vim.fn.expand("%:p:h")
  vim.fn.setreg("+", dir)
  vim.notify("📁 Copied directory path: " .. dir)
end, { desc = "Copy current directory path" })
