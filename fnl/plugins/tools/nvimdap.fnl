{1 :mfussenegger/nvim-dap
 :dependencies [:rcarriga/nvim-dap-ui
                  :nvim-neotest/nvim-nio
                  :williamboman/mason.nvim]
 :config (fn [] (local dap (require :dap))
                (local ui (require :dapui))
                ((. (require :dapui) :setup))
                ;;((. (require :dap-python) :setup) "~/.local/share/nvim/mason/packages/debugpy/venv/bin/python")  
                (set dap.adapters.codelldb {:command :codelldb :type :executable})
                (set dap.configurations.cpp [{:cwd "${workspaceFolder}"
                                              :name "Launch file"
                                              :program (fn []
                                                         (vim.fn.input "Path to executable: "
                                                                       (.. (vim.fn.getcwd) "/")
                                                                       :file))
                                              :request :launch
                                              :stopOnEntry false
                                              :type :codelldb}])
                (set dap.configurations.c dap.configurations.cpp)
                (vim.keymap.set :n :<space>dt dap.toggle_breakpoint)
                (vim.keymap.set :n :<space>dj dap.run_to_cursor)
                (vim.keymap.set :n :<space>de (fn [] 
                                                ((. (require :dapui) :eval) nil {:enter true}))) ;;eval under cursor
                (vim.keymap.set :n :dc dap.continue)
                (vim.keymap.set :n :di dap.step_into)
                (vim.keymap.set :n :da dap.step_over)
                (vim.keymap.set :n :do dap.step_out)
                (vim.keymap.set :n :db dap.step_back)
                (vim.keymap.set :n :dr dap.restart)
                (vim.keymap.set :n :dq ui.close)

                (fn dap.listeners.before.attach.dapui_config [] (ui.open))

                (fn dap.listeners.before.launch.dapui_config [] (ui.open)))}

               ;; (fn dap.listeners.before.event_terminated.dapui_config []
               ;;       (ui.close))

               ;; (fn dap.listeners.before.event_exited.dapui_config [] (ui.close)))}
 
  
              
            

              

