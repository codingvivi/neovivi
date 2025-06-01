{1 :hat0uma/csvview.nvim
 :cmd [:CsvViewEnable :CsvViewDisable :CsvViewToggle]
 :opts {:parser {;:async_chunksize 50
                 ;:comments {}
                 :delimiter {:default ";" :ft {:tsv "\t"}}}
        ;:view {:display_mode :border}
        :keymaps {:jump_next_field_end {1 :<Tab> :mode [:n :v]}}
        :jump_next_row {1 :<Enter> :mode [:n :v]}
        :jump_prev_field_end {1 :<S-Tab> :mode [:n :v]}
        :jump_prev_row {1 :<S-Enter> :mode [:n :v]}
        :textobject_field_inner {1 :if :mode [:o :x]}
        :textobject_field_outer {1 :af :mode [:o :x]}}}
        
