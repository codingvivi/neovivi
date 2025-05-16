-- :fennel:1747391702
vim.opt["foldmethod"] = "indent"
vim.keymap.set({"n"}, "<esc>", "<esc><cmd>noh<cr>", {desc = "No highlight escape", silent = true})
do local _ = {"<localleader>p", "<cmd>TypstPreview <cr>", desc = "Start preview"} end
do local _ = {"<localleader>t", "<cmd>TypstPreview <cr>", desc = "Toggle preview"} end
do local _ = {"<localleader>u", "<cmd>TypstPreviewUpdate <cr>", desc = "Download/update preview binaries"} end
do local _ = {"<localleader>c", "<cmd>TypstPreviewFollowCursorToggle <cr>", desc = "Toggle cursor follow"} end
return {"<localleader>s", "<cmd>TypstPreviewSyncCursor <cr>", desc = "Sync cursor follow"}