{1 :pxwg/math-conceal.nvim
 :build "make lua51"
 :enabled false
 :event :VeryLazy
 :main :math-conceal
 :opts {:conceal [:greek :script :math :font :delim :phy]
        :enabled true
        :ft [:*.tex :*.md :*.typ]}}  
