(import-macros {: setlocal! } :hibiscus.vim)

(setlocal! makeprg "typst compile main.typ VDJ-XoneViv2-Manual.pdf")

(fn get_makeprg [] 
  (let [current-file-directory (vim.fn.expand "%:p:h")
        makefile_path (.. current-file-directory :/Makefile)]
    (if (= 1 (vim.fn.filereadable makefile_path))
      (do
        (vim.notify "Makefile found in filepath!"))
      (vim.notify "No makefile found in filepath!"))))

;(get_makeprg)

