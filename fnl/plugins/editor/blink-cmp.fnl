{1 :saghen/blink.cmp
 :dependencies [:L3MON4D3/LuaSnip]
 :opts {:appearance {:nerd_font_variant :mono}
        :completion {:documentation {:auto_show false}}
        :fuzzy {:implementation :prefer_rust_with_warning}
         :keymap {:preset :enter
                  :<S-Tab> [:select_prev :fallback]
                  :<Tab> [:select_next :fallback]}
                                 
        :sources {:default [:lsp :path :snippets :buffer]
                  :per_filetype {:org [:orgmode]}
                  :providers {:orgmode {:name :Orgmode
                                        :module :orgmode.org.autocompletion.blink
                                        :fallbacks [:buffer]}}}
        :snippets {:preset :luasnip}}

 :opts_extend [:sources.default]
 :version :1.*} 
