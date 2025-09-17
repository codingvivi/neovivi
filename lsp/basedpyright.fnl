{:cmd [:basedpyright-langserver :--stdio]
 :filetypes [:python]
 :on_attach (fn [client bufnr]
              (vim.api.nvim_buf_create_user_command bufnr
                                                    :LspPyrightOrganizeImports
                                                    (fn []
                                                      (local params
                                                             {:arguments [(vim.uri_from_bufnr bufnr)]
                                                              :command :basedpyright.organizeimports})
                                                      (client.request :workspace/executeCommand
                                                                      params nil
                                                                      bufnr))
                                                    {:desc "Organize Imports"})
              (vim.api.nvim_buf_create_user_command bufnr
                                                    :LspPyrightSetPythonPath
                                                    set-python-path
                                                    {:complete :file
                                                     :desc "Reconfigure basedpyright with the provided python path"
                                                     :nargs 1}))
 :root_markers [:pyproject.toml
                :setup.py
                :setup.cfg
                :requirements.txt
                :Pipfile
                :pyrightconfig.json
                :.git]
 :settings {:basedpyright {:analysis {:autoSearchPaths true
                                      :diagnosticMode :openFilesOnly
                                      :useLibraryCodeForTypes true}}}}
