{1 :brendon-felix/divide.nvim
 :event :VeryLazy
 :keys [{1 :<leader>cdh
         2 (fn []
             ((. (require :divide) :header)))
         :desc "Insert divide header #1"}
        {1 :<leader>cds
         2 (fn []
             ((. (require :divide) :subheader)))
         :desc "Insert divide header #2"}
        {1 :<leader>cdd
         2 (fn []
             ((. (require :divide) :divider)))
         :desc "Insert divider"}]
 :opts {:width 80
        :char "~"
        :default {:line_end "/*" :line_start "/*"}
        ;;:language_config {:c {:line_start "/*" :line_end "*/"}}
        :languages {:lua {:line_start "--" :line_end "--"}
                    :fennel {:line_start ";" :line_end ";"}
                    :c {:line_start "/*" :character "~" :line_end "*/"}
                    :cpp {:line_start "/*" :character "~" :line_end "*/"}
                    :rust {:line_start "/*" :character "~" :line_end "*/"}
                    :python {:line_start "#" :line_end "#"}
                    :typst {:line_start "/*" :line_end "*/"}}}}
