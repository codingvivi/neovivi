-- :fennel:1748739879
return vim.keymap.set({"n"}, "<localleader>t", "<cmd>CsvViewToggle <cr>", {desc = "Start preview", silent = true})