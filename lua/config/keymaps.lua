-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
--
--
local opts = { noremap = true, silent = true }
local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()

-- REQUIRED

vim.keymap.set("n", "<leader>a", function()
  harpoon:list():add()
end, { desc = "Add Arpoon" })
vim.keymap.set("n", "<C-e>", function()
  harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set("n", "11", function()
  harpoon:list():select(1)
end)
vim.keymap.set("n", "22", function()
  harpoon:list():select(2)
end)
vim.keymap.set("n", "33", function()
  harpoon:list():select(3)
end)
vim.keymap.set("n", "44", function()
  harpoon:list():select(4)
end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function()
  harpoon:list():prev()
end)
vim.keymap.set("n", "<C-S-N>", function()
  harpoon:list():next()
end)

-- change scape
vim.keymap.set("n", "jk", "<Esc>")

-- New tab
vim.keymap.set("n", "te", ":tabedit")
vim.keymap.set("n", "<tab>", ":tabnext<Return>")
vim.keymap.set("n", "<s-tab>", ":tabprev<Return>")
-- Split window
vim.keymap.set("n", "ss", ":split<Return>")
vim.keymap.set("n", "sv", ":vsplit<Return>")

vim.keymap.set("n", "<leader><F5>", vim.cmd.UndotreeToggle, { desc = "Undo Tree" })
vim.keymap.set("n", "<leader><F6>", vim.cmd.MarkdownPreview)
vim.keymap.set("n", "<leader><F8>", vim.cmd.EslintFixAll, { desc = "EsLintFixAll" })

-- Auto escape with kj
vim.keymap.set("i", "kj", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("v", "kj", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("c", "kj", "<Esc>", { noremap = true, silent = true })

vim.keymap.set("i", "jk", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("v", "jk", "<Esc>", { noremap = true, silent = true })
vim.keymap.set("c", "jk", "<Esc>", { noremap = true, silent = true })
