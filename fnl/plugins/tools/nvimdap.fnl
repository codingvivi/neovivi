{1 :mfussenegger/nvim-dap
 :event :VeryLazy
 :dependencies [:folke/which-key.nvim
                :rcarriga/nvim-dap-ui
                :nvim-neotest/nvim-nio
                :williamboman/mason.nvim]
 :config (fn []
           (local dap (require :dap))
           (local ui (require :dapui))
           ((. (require :dapui) :setup))
           ;;((. (require :dap-python) :setup) "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python")  
           (set dap.adapters.codelldb {:command :codelldb :type :executable})
           (set dap.configurations.cpp
                [{:cwd "${workspaceFolder}"
                  :name "Launch file"
                  :program (fn []
                             (vim.fn.input "Path to executable: "
                                           (.. (vim.fn.getcwd) "/") :file))
                  :request :launch
                  :stopOnEntry false
                  :type :codelldb}])
           (set dap.configurations.c dap.configurations.cpp)
           (local which-key (require :which-key))
           (which-key.add [{1 :<leader>d :group "debug"}])
           (import-macros {: map!} :hibiscus.vim)
           (map! [n] :<leader>dt dap.toggle_breakpoint "Toggle Breakpoint")
           (map! [n] :<leader>dj dap.run_to_cursor "Run to cursor")
           (map! [n] 
                 :<leader>de
                 (fn []
                   ((. (require :dapui) :eval) nil {:enter true}))
                 "eval under cursor")
           (map! [n] :<leader>dc dap.continue "Continue debugging")
           (map! [n] :<leader>di dap.step_into "Step Into")
           (map! [n] :<leader>da dap.step_over "Step Over")
           (map! [n] :<leader>do dap.step_out "Step Out")
           (map! [n] :<leader>db dap.step_back "Step Back")
           (map! [n] :<leader>dr dap.restart "Restart DAP")
           (map! [n] :<leader>dq ui.close "Close dap")

           (fn dap.listeners.before.attach.dapui_config [] (ui.open))

           (fn dap.listeners.before.launch.dapui_config [] (ui.open)))}

;; (fn dap.listeners.before.event_terminated.dapui_config []
;;       (ui.close))

;; (fn dap.listeners.before.event_exited.dapui_config [] (ui.close)))}
