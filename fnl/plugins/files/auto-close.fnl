{1 :m4xshen/autoclose.nvim
 :event [ :BufReadPre :BufNewFile]
 :enabled false
 :opts {:disable_when_touch true 
        :keys {:$ {:close true 
                   :enabled_filetypes [:markdown :tex :typst] 
                   :escape true 
                   :pair "$$"}}}}  
