{1 :kristijanhusak/vim-dadbod-ui
 :enabled false
 :dependencies [:tpope/vim-dadbod]
 :init  (fn []
          (import-macros {: g!} :hibiscus.vim)
          (g! b_ui_auto_execute_table_helpers 1))}
          
