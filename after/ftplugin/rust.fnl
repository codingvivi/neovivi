(import-macros {: map! : setlocal! : setglobal! : exec!} :hibiscus.vim)

; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ;
;                                   settings                                   ;
; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ;
(setlocal! makeprg "cargo build")

(setglobal! conjure#extract#tree_sitter#enabled true)

;; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ;
;;                                   keymaps                                    ;
;; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ;
;; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ single keys ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ;
;(map! [n :buffer] :J #(vim.cmd.RustLsp :joinLines) "Join lines (Rust)")
(map! [n :buffer] :K #(vim.cmd.RustLsp [:hover :actions]) "Symbol info (Rust)")

;; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ g maps ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ;
(map! [n :buffer] :gK #(vim.cmd.RustLsp :openDocs) "Open docs.rs")
;(map! [n :buffer] :gra #(vim.cmd.RustLsp :codeAction) "code action (Rust)")
(map! [n :buffer] :grd #(vim.cmd.RustLsp :renderDiagnostic)
      "Render diagnostics")

(map! [n :buffer] :gre #(vim.cmd.RustLsp :explainError) "Explain error")

;; ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ leader mappings ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ ;
(map! [n :buffer] :<leader>ct #(vim.cmd.RustLsp :syntaxTree) "Show syntax tree")
;; run code 
(map! [n :buffer] :<leader>crr #(vim.cmd.RustLsp :run) "Run code (Rust)")

(map! [n :buffer] :<leader>crd #(exec! [terminal RUST_LOG=debug cargo run])
      "Run with debug log")

(map! [n :buffer] :<leader>cre #(exec! [terminal RUST_LOG=error cargo run])
      "Run code (Rust)")

(map! [n :buffer] :<leader>cri #(exec! [terminal RUST_LOG=info cargo run])
      "Run with info log")

(map! [n :buffer] :<leader>cro #(exec! [terminal RUST_LOG=off cargo run])
      "Run without log")

(map! [n :buffer] :<leader>crt #(exec! [terminal RUST_LOG=trace cargo run])
      "Run with trace/all")

(map! [n :buffer] :<leader>crw #(exec! [terminal RUST_LOG=warn cargo run])
      "Run with warn log")

(map! [n :buffer] :<leader>cR #(vim.cmd.RustLsp :runnables)
      "Select target and Run (Rust)")

(map! [n :buffer] :<leader>pm #(vim.cmd.RustLsp :openCargo) "Open Cargo.toml")
