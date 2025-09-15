{1 :chomosuke/typst-preview.nvim
 :ft :typst
 :version :1.*
 ;;:keys [];;{1 :<localleader>p 2 "<cmd>TypstPreview <cr>" :desc "Start preview"}
 ;;{1 :<localleader>t 2 "<cmd>TypstPreview <cr>" :desc "Toggle preview"}
 ;;{1 :<localleader>u 2 "<cmd>TypstPreviewUpdate <cr>" :desc "Download/update preview binaries"}
 ;;{1 :<localleader>c 2 "<cmd>TypstPreviewFollowCursorToggle <cr>" :desc "Toggle cursor follow"}
 ;;{1 :<localleader>s 2 "<cmd>TypstPreviewSyncCursor <cr>" :desc "Sync cursor follow"}]
 :opts {:dependencies_bin {:tinymist :tinymist} :invert_colors :never
        :get_main_file (fn [path-of-buffer] path-of-buffer)
        :get_root (fn [path-of-main-file] (local root (os.getenv :TYPST_ROOT))
                                          (when root 
                                            (lua "return root"))
                                          (vim.fn.fnamemodify path-of-main-file ":p:h"))}}
