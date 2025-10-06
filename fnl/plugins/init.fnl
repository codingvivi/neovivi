;;  (let [plugin-table {1 name}]
;;    (for [i 1 (length body) 2]
;;      (let [key (body i)
;;            val (body (+ i 1))]
;;        (tset plugin-table key val)))
;;    plugin-table))

(macro neovivi! [& plugins]
  (let [import-forms []]
    (each [_ plugin-name (ipairs plugins)]
      (let [module-path (.. "plugins.files." (tostring plugin-name))]
        (table.insert import-forms {:import module-path})))
    import-forms))

;; fnlfmt: skip
(neovivi! ;:ui 
;          alpha-nvim
          gitsigns-nvim
          ;nyoom-modeline
          oxocarbon-nvim 
;          transparent-nvim 
          which-key-nvim
;          rainbow-delimiters-nvim
          ;:utils
          conform-nvim
          fzf-lua
          mason-nvim
          neogit
;          neovim-project
          oil-nvim
          ;harpoon
          ;:editor
          autoclose-nvim
          blink-cmp
          divide-nvim
          nvim-autopairs
          modes-nvim
;          nvim-colorizer
          h42header
          ;:practice
          hardtime
;					;:lang
          conjure
          nvim-treesitter
          parpar-nvim
          ;:lang.rust
;          rustaceanvim
          ;:lang.fennel
          hibiscus-nvim
          ;:lang.orgmode
;          nvim-orgmode
;          org-roam-nvim
          ;:lang.typst
          typst-preview)
