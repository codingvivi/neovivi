(import-macros {: map!} :hibiscus.vim)
;; create table table for whichkey groups
(local which-key-groups [])
(table.insert which-key-groups
              {:mode [:n :v]
               3 {1 "[" :group "previous"}
               5 {1 "]" :group "next"}
               7 {1 "g" :group "go"}
               9 {1 "z" :group "view, spell"}
               11 {1 :<leader> :group "leader" :icon "󰌓"}
               13 {1 :<leader>m :group "local leader" :icon "󰌓"}})

;; (local harpoon (require :harpoon)) ;;testing

(map! [n] :<esc> :<esc><cmd>noh<cr> "No highlight escape")

(map! [n] :gr "gd[{V%%::s/<CR>///gc<Left><Left><Left>"
      "Replace definition locally")

(map! [n] :gR "gD:%%s/<CR>///gc<Left><Left><Left>" "Replace definition locally")

;;;; harpoon
;;(map! [n] "<leader>ba" (fn [] (: (harpoon:list) :add) "add buffer to Harpoon"))
;;(map! [n] "<leader>bh" (fn [] (: (harpoon.ui:toggle_quick_menu (harpoon:list)) :add) "Open harpoon UI"))

;; misc harpoon
;;(map! [n] "<leader>1" (fn [] (: (harpoon:list) :select 1) "Select Harpoon buffer 1"))
;;(map! [n] "<leader>1" (fn [] (: (harpoon:list) :select 2) "Select Harpoon buffer 2"))
;;(map! [n] "<leader>1" (fn [] (: (harpoon:list) :select 3) "Select Harpoon buffer 3"))
;;(map! [n] "<leader>1" (fn [] (: (harpoon:list) :select 4) "Select Harpoon buffer 4"))

;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; local leader ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; 
(map! [n] :<leader><space> "<cmd>FzfLua files<CR>" "TODO find project")
(map! [n] "<leader>'" "<cmd>FzfLua resume<CR>" "Resume last search")
(map! [n] :<leader>/ "<cmd>FzfLua live_grep<CR>" "Search project")
(map! [n] :<leader>< "<cmd>FzfLua buffers<CR>" "Switch Buffer")

;; ----------------------------- b - buffer stuff -----------------------------
(table.insert which-key-groups {1 :<leader>b :group "buffer"})
(map! [n] "<leader>b[" :<cmd>bprevious<CR> "Previous buffer")
(map! [n] :<leader>bl "<cmd>e#<CR>" "Switch to last buffer")
(map! [n] :<leader>bp :<cmd>bprevious<CR> "Previous buffer")
(map! [n] "<leader>b]" :<cmd>bnext<CR> "Next buffer")
(map! [n] :<leader>bn :<cmd>bnext<CR> "Next buffer")
(map! [n] :<leader>bd :<cmd>q<CR> "Kill buffer")

;; ------------------------------ code - code stuff -------------------------------
(table.insert which-key-groups {1 :<leader>c :group "code"})
(map! [n] :<leader>cc :<cmd>make<CR> "compile code")

;; ------------------------------ f - file stuff -------------------------------
(table.insert which-key-groups {1 :<leader>f :group :file})
(map! [n] :<leader>fC "<cmd>%y+<CR>" "Copy file contents")

(map! [n] :<leader>fD :<cmd>bw<CR> "Delete this file")

(map! [n] :<leader>ff "<cmd>FzfLua files<CR>" "Find file")
;; personal config
(map! [n] :<leader>fp "<cmd>FzfLua files cwd=~/.config/nvim/<CR>"
      "Find in personal neovim config")

(map! [n] :<leader>fP "<cmd>Oil ~/.config/nvim/<CR>"
      "Browse personal neovim config")

(map! [n] :<leader>fr "<cmd>FzfLua oldfiles<CR>" "Find recent file")
;; write file
(map! [n] :<leader>fs "<cmd>w<CR>" "Save file")
(table.insert which-key-groups {1 :<leader>fa :group "all files"})
(map! [n] :<leader>fas "<cmd>wa<CR>" "Save all files")

(map! [n] :<leader>fq "<cmd>q<CR>" "Quit file")
;;yank file (path)
(map! [n] :<leader>fy "<cmd>let @+ = expand('%')<CR>" "Yank replative path")
(map! [n] :<leader>fY "<cmd>let @+ = expand('%:p')<CR>" "Yank full path")

(map! [n] :- "<cmd>Oil<CR>" "Open file browser")

;;  ------------------------------------ h - [h]elp ---------------------------
(table.insert which-key-groups {1 :<leader>h :group "help (& cmd search)"})
(map! [n] :<leader>ht "<cmd>FzfLua colorschemes<CR>"
      "search and preview themes")

(table.insert which-key-groups {1 :<leader>hb :group "bindings"})
(map! [n] :<leader>hbf "<cmd>FzfLua keymaps<CR>" "search keymaps")
(map! [n] :<leader>hbt "<cmd>WhichKey<CR>" "show which-key help")
(map! [n] "<leader>hx" "<cmd>FzfLua commands<CR>" "search commands")

;; ----------------------------------- g - [g]it ---------------------------------- 
(table.insert which-key-groups {1 :<leader>g :group "git"})
(map! [n] :<leader>gg "<cmd>Neogit<CR>" "Open Neogit")
(map! [n] :<leader>gcc "<cmd>Neogit<CR>" "Create commit")

;; m - local leader
;;;; typst

;; ------------------------------------- s - [s]earch ----------------------------- 
(table.insert which-key-groups {1 :<leader>s :group "search"})
(map! [n] "<leader>sh" "<cmd>FzfLua helptags<CR>" "Search help tags")

;; ------------------------------- w - window stuff ---------------------------- 
(table.insert which-key-groups {1 :<leader>w :group "window"})
(map! [n] :<leader>wx "<C-w>x" "Swap windows")
(map! [n] :<leader>ws :<cmd>split<CR> "split window horizontally")
(map! [n] :<leader>wv :<cmd>vsplit<CR> "split window vertically")
(map! [n] :<leader>wh :<C-w>h "focus window left")
(map! [n] :<leader>wj :<C-w>j "focus window below")
(map! [n] :<leader>wk :<C-w>k "focus window above")
(map! [n] :<leader>wl :<C-w>l "focus window right")

;; ---------------- q - [q]uit (and load) ---------------- 
(table.insert which-key-groups {1 :<leader>q :group "quit (and load)"})
(map! [n] :<leader>ql "<cmd>:source lastlocalsession<CR>"
      "Load last session in cwd")

(map! [n] :<leader>qL "<cmd>:source ~/.local/state/nvim/lastsession<CR>"
      "Load last session in .local/state")

(map! [n] :<leader>qs "<cmd>:mksession! lastlocalsession<CR><cmd>:qa<CR>"
      "Save session in cwd and quit")

(map! [n] :<leader>qS "<cmd>:mksession! ~/.local/state/nvim/lastsession<CR>"
      "Save session in .local/state and quit")

(map! [n] :<leader>qq "<cmd>:qa<CR>" "Quit all")
(map! [n] :<leader>qQ "<cmd>:qa!<CR>" "Save and quit all")

(local which-key (require :which-key))
(which-key.add which-key-groups)
