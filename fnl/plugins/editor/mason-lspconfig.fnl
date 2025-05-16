{1 :williamboman/mason-lspconfig.nvim
 :dependencies :williamboman/mason.nvim ;;will get loaded before mlspconfig
 ;:event [ :BufReadPre :BufNewFile ]
 :opts {;;:automatic_enable {:exclude [:jdtls]}
        :ensure_installed [:clangd]}}  ;; C
                            ;;:fennel-ls
                            
