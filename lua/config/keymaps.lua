-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- exit/save
-- keymap.set("n", "<leader>aa", "<cmd>:wa<CR>", { desc = ":wa" })
-- keymap.set("n", "<leader>aq", "<cmd>:wqa<CR>", { desc = ":wqa" })
-- keymap.set("n", "<leader>ax", "<cmd>:qa<CR>", { desc = ":qa" })
-- keymap.set("n", "<leader>ac", "<cmd>:w<CR>", { desc = ":w" })

keymap.set("n", "gh", vim.lsp.buf.hover, { desc = "Show hover docs" })
keymap.set({ "n", "s", "x" }, "<C-s>", "<cmd>:wa<CR>", { desc = "Save all files" })
