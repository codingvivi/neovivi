;;(import-macros {: map!} :hibiscus.vim)
;; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ;
;;                                   keymaps                                    ;
;; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ;
;; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ single keys ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ;
;(map! [n :buffer] :J #(vim.cmd.RustLsp :joinLines) "Join lines (Rust)")
;(map! [n :buffer] :K #(vim.cmd.RustLsp [:hover :actions]) "Symbol info (Rust)")
;
;; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ g maps ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ;
;(map! [n :buffer] :gK #(vim.cmd.RustLsp :openDocs) "Open docs.rs")
;(map! [n :buffer] :gra #(vim.cmd.RustLsp :codeAction) "code action (Rust)")
;(map! [n :buffer] :grd #(vim.cmd.RustLsp :relatedDiagnostics)
;      "Jump to related diagnostics")
;
;(map! [n :buffer] :gre #(vim.cmd.RustLsp :explainError) "Explain error")
;; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ leader mappings ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ;
;(map! [n :buff:r] :<leader>ct #(vim.cmd.RustLsp :syntaxTree) "Show syntax tree")
;(map! [n :buff:r] :<leader>cr #(vim.cmd.RustLsp :run) "Run code (Rust)")
;(map! [n :buffer] :<leader>cR #(vim.cmd.RustLsp :runnables)
;      "Select target and Run (Rust)")
;
;(map! [n :buff:r] :<leader>pm #(vim.cmd.RustLsp :openCargo) "Open Cargo.toml")
