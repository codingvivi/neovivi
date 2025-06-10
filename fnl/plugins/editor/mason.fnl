{1 :williamboman/mason.nvim
 :cmd [:Mason]
 ;:event [:BufReadPre :BufNewFile]
 ;;:config (fn [] ((. (require :mason) :setup)))
 :opts {:registries ["github:nvim-java/mason-registry"
                     "github:mason-org/mason-registry"]}}
