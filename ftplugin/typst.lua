-- :fennel:1754503353
vim.keymap.set({"n"}, "<localleader>p", "<cmd>TypstPreview <cr>", {desc = "Start preview", silent = true})
vim.keymap.set({"n"}, "<localleader>t", "<cmd>TypstPreview <cr>", {desc = "Toggle preview", silent = true})
vim.keymap.set({"n"}, "<localleader>u", "<cmd>TypstPreviewUpdate <cr>", {desc = "Download/update preview binaries", silent = true})
vim.keymap.set({"n"}, "<localleader>c", "<cmd>TypstPreviewFollowCursorToggle <cr>", {desc = "Toggle cursor follow", silent = true})
return vim.keymap.set({"n"}, "<localleader>s", "<cmd>TypstPreviewSyncCursor <cr>", {desc = "Sync cursor follow", silent = true})