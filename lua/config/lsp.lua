-- :fennel:1750952891
vim.diagnostic.config({virtual_text = true})
vim.lsp.config("sqls", {})
return vim.lsp.enable({"clangd", "jdtls", "racket_langserver", "basedpyright", "sqls", "lemminx", "tinymist"})