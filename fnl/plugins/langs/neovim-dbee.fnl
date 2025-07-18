{1 :kndndrj/nvim-dbee
 :dependcies ["MunifTanjim/nui.nvim"]
 :build (fn []
          (. (require :dbee) :install))
 :opts (fn []
          (import-macros {: map!} :hibiscus.vim))}
         
