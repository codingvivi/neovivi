{1 :saghen/blink.cmp 
 :event [:InsertEnter :CmdlineEnter]
 :dependencies [:L3MON4D3/LuaSnip]
 :opts {:appearance {:nerd_font_variant :mono}
        :completion {:documentation {:auto_show false}
                     :menu {:draw {:padding [0 0]; no color padding
                                   ;; add colored padding around icons
                                   :components {:kind_icon {:text (fn [ctx] (.. " " ctx.kind_icon ctx.icon_gap " "))}}}}} 
        :fuzzy {:implementation :prefer_rust_with_warning}
        :keymap {:preset :enter
                 :<S-Tab> [:select_prev :fallback]
                 :<Tab> [:select_next :fallback]}
                                 
        :sources {:default [:lsp 
                            :path 
                            :snippets 
                            :buffer]
                  :per_filetype {:sql [:snippets
                                       :dadbod]
                                 :org [:orgmode
                                       :buffer]}
                  :providers {:dadbod {:name :Dadbod
                                       :module :vim_dadbod_completion.blink}
                              :orgmode {:name :Orgmode
                                        :module :orgmode.org.autocompletion.blink
                                        :fallbacks [:buffer]}}}
        :snippets {:preset :luasnip}}


 :opts_extend [:sources.default]
 :version :1.*} 
