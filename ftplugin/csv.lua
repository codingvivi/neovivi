-- :fennel:1751038215
return vim.keymap.set({"n"}, "<localleader>t", "<cmd>CsvViewToggle <cr>", {desc = "Start preview", silent = true})