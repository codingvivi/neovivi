{1 :iamcco/markdown-preview.nvim
 :cmd [:MarkdownPreviewToggle :MarkdownPreview :MarkdownPreviewStop]
 :ft [:markdown] 
 :build (fn [] (. vim.fn "mkdp#util#install"))}
