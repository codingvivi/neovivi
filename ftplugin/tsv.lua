-- :fennel:1758729277
vim.opt["wrap"] = false
return vim.keymap.set({"n"}, "<localleader>t", "<cmd>CsvViewToggle <cr>", {desc = "Start preview", silent = true})