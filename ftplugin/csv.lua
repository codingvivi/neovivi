-- :fennel:1758729277
return vim.keymap.set({"n"}, "<localleader>t", "<cmd>CsvViewToggle <cr>", {desc = "Start preview", silent = true})