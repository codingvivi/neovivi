(vim.diagnostic.config {:virtual_text true})
(vim.lsp.enable [:clangd
                 :neocmake
                 ;:jdtls
                 ;:racket_langserver
                 :fennel_ls
                 :basedpyright
                 ;:sqls
                 :lemminx
                 :tinymist])
