(macro use-plugin! [name & body]
  (let [plugin-table {1 name}]
    (for [i 1 (length body) 2]
      (let [key (body i)
            val (body (+ i 1))]
        (tset plugin-table key val)))
    plugin-table))

(macro neovivi! [& plugins]
  (let [import-forms []]
    (each [_ plugin-name (ipairs plugins)]
      (let [module-path (.. "plugins.files." (tostring plugin-name))]
        (table.insert import-forms {:import module-path})))
    import-forms))

(neovivi! ;:ui 
          ;alpha-nvim
          oxocarbon-nvim 
					transparent-nvim 
					which-key-nvim
					;:utils
					fzf-lua
					neogit
					oil
					;harpoon
					;:editor
          blink-cmp
					nvim-treesitter
					;:lang
					)
