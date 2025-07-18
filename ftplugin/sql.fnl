(import-macros {: map!} :hibiscus.vim)

(map! [n] :<localleader>t :<cmd>DBUIToggle<CR> "Toggle dadbod UI")
(map! [n] :<localleader>a :<cmd>DBUIAddConnection<CR> "Add database connection")
(map! [n] :<localleader>s :<cmd>DBUIFindBuffer<CR> "Add database connection")
