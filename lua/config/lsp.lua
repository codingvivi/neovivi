-- :fennel:1757589867
vim.diagnostic.config({virtual_text = true})
return vim.lsp.enable({"clangd", "neocmake", "jdtls", "racket_langserver", "fennel_ls", "basedpyright", "sqls", "lemminx", "tinymist"})