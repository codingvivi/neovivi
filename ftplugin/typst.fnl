(import-macros {: map! } :hibiscus.vim)
;;(set! foldmethod :indent)

(map! [n] :<localleader>p "<cmd>TypstPreview <cr>"  "Start preview")
(map! [n] :<localleader>t "<cmd>TypstPreview <cr>"  "Toggle preview")
(map! [n] :<localleader>u "<cmd>TypstPreviewUpdate <cr>"  "Download/update preview binaries")
(map! [n] :<localleader>c "<cmd>TypstPreviewFollowCursorToggle <cr>"  "Toggle cursor follow")
(map! [n] :<localleader>s "<cmd>TypstPreviewSyncCursor <cr>"  "Sync cursor follow")

