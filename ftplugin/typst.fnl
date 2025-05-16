(import-macros { : map!} :hibiscus.vim)
;;(set! foldmethod :indent)

(map! [n] :<localleader>p "<cmd>TypstPreview <cr>" :desc "Start preview")
{map! [n] :<localleader>t "<cmd>TypstPreview <cr>" :desc "Toggle preview"}
{map! [n] :<localleader>u "<cmd>TypstPreviewUpdate <cr>" :desc "Download/update preview binaries"}
{map! [n] :<localleader>c "<cmd>TypstPreviewFollowCursorToggle <cr>" :desc "Toggle cursor follow"}
{map! [n] :<localleader>s "<cmd>TypstPreviewSyncCursor <cr>" :desc "Sync cursor follow"}

