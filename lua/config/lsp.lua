-- :fennel:1747224708
vim.diagnostic.config({virtual_text = true})
return vim.lsp.enable({"clangd", "jdtls", "racket_langserver", "basedpyright", "lemminx", "tinymist"})