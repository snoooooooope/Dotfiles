-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Unmap Ctrl+p in all common modes
local modes = { "n", "v", "i", "c", "o", "t", "s", "x" }
for _, mode in ipairs(modes) do
  pcall(vim.keymap.del, mode, "<C-p>")
end
-- Unmap Ctrl+t in all common modes
local modes = { "n", "v", "i", "c", "o", "t", "s", "x" }
for _, mode in ipairs(modes) do
  pcall(vim.keymap.del, mode, "<C-t>")
end
-- Unmap Ctrl+s in all common modes
local modes = { "n", "v", "i", "c", "o", "t", "s", "x" }
for _, mode in ipairs(modes) do
  pcall(vim.keymap.del, mode, "<C-s>")
end
local modes = { "n", "v", "i", "c", "o", "t", "s", "x" }
for _, mode in ipairs(modes) do
  pcall(vim.keymap.del, mode, "<C-y>")
end
