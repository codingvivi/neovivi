{1 :neovim/nvim-lspconfig :enabled false :event :VeryLazy :opts {}}

;:event [:BufReadPre :BufNewFile]
;; :config (fn []
;;           (local lspconfig (require :lspconfig))
;;           ;;(lspconfig.clangd.setup {})
;;           (lspconfig.fennel_ls.setup {:libraries {:nvim true}})
;;           ;;(lspconfig.fennel_language_server.setup {:filetypes [:fennel]
;;           ;;                                         :root_dir (lspconfig.util.root_pattern :fnl :lua)
;;           ;;                                         :single_file_support true
;;           ;;                                         :settings {:fennel {:diagnostics {:globals [:vim 
;;           ;;                                                                                     :jit 
;;           ;;                                                                                     :comment]
;;           ;;                                                                           :workspace {:library (vim.api.nvim_list_runtime_paths)}}}}})
;;           (lspconfig.lua_ls.setup {:settings {:Lua {:diagnostics {:globals [:vim]}}}})
;;           (lspconfig.racket_langserver.setup {})}

;(lspconfig.pyright.setup {})
;(lspconfig.basedpyright.setup {})
;;(lspconfig.lemminx.setup {})
;(lspconfig.tinymist.setup {}))}
