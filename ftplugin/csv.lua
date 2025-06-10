-- :fennel:1749560320
return vim.keymap.set({"n"}, "<localleader>t", "<cmd>CsvViewToggle <cr>", {desc = "Toggle table view", silent = true})