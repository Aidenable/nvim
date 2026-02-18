require "nvchad.mappings"

local map = vim.keymap.set

-- Удаляем конфликтующие маппинги
pcall(vim.keymap.del, "n", "<leader>rn")
pcall(vim.keymap.del, "n", "<leader>n")
pcall(vim.keymap.del, "n", "<leader>ch")
pcall(vim.keymap.del, "n", "<leader>th")

-- Number toggles
map("n", "<leader>nr", "<cmd>set rnu!<CR>", { desc = "Toggle Relative number" })
map("n", "<leader>nl", "<cmd>set nu!<CR>", { desc = "Toggle Line number" })
map("n", "<leader>nm", "<cmd>NvCheatsheet<CR>", { desc = "Toggle NvCheatsheet" })

-- Telescope theme
map("n", "<leader>tt", "<cmd>Telescope themes<CR>", { desc = "Telescope Nvchad themes" })

-- Russian layout support
map("i", "jj", "<Esc>", { desc = "Escape", silent = true })
map("n", "ш", "i", { desc = "Insert mode [RU]", silent = true })
map("n", "к", "r", { desc = "Replace Character [RU]", silent = true })

-- Command mode
map("n", ";", ":", { desc = "CMD enter command mode" })

-- Save shortcuts
map("n", "<C-v>", "<cmd>p<CR>", { desc = "Paste" })
map("n", "s", "<cmd>w<CR>", { desc = "Save File" })
map("n", "ss", "<cmd>wall<CR>", { desc = "Save Project" })
map("n", "<leader>s", "<cmd>wall<CR>", { desc = "Save Project" })
map("n", "<leader>w", "<cmd>wall<CR>", { desc = "Save Project" })
map({ "n", "i", "v" }, "<C-s>", "<cmd>w<CR>")

-- Buffer management
map("n", "<leader>c", function()
  require("nvchad.tabufline").close_buffer()
end, { desc = "Close Buffer" })

-- Window splits
map("n", "<leader>h", "<cmd>split<CR>", { desc = "Horizontal split" })
map("n", "|", "<cmd>split<CR>", { desc = "Horizontal split" })
map("n", "<leader>v", "<cmd>vsplit<CR>", { desc = "Vertical split" })
map("n", "\\", "<cmd>vsplit<CR>", { desc = "Vertical split" })

-- Terminal (используем встроенный NvChad terminal)
map("n", "<leader>th", function()
  require("nvchad.term").new { pos = "sp" }
end, { desc = "Horizontal Terminal" })

map("n", "<leader>tv", function()
  require("nvchad.term").new { pos = "vsp" }
end, { desc = "Vertical Terminal" })

-- NvimTree
map("n", "<leader>e", "<cmd>NvimTreeToggle<CR>", { desc = "Toggle NvimTree" })
map("n", "<leader>o", function()
  if vim.bo.filetype == "NvimTree" then
    vim.cmd.wincmd "p"
  else
    vim.cmd "NvimTreeFocus"
  end
end, { desc = "Toggle NvimTree Focus" })
