-- :fennel:1758729277
vim.keymap.set({"n"}, "<localleader>t", "<cmd>DBUIToggle<CR>", {desc = "Toggle dadbod UI", silent = true})
vim.keymap.set({"n"}, "<localleader>a", "<cmd>DBUIAddConnection<CR>", {desc = "Add database connection", silent = true})
return vim.keymap.set({"n"}, "<localleader>s", "<cmd>DBUIFindBuffer<CR>", {desc = "Add database connection", silent = true})