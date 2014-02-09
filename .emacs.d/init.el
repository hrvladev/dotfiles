;; Directory structure
(progn
  (defvar directory-structure (make-hash-table))

  (puthash :home user-emacs-directory directory-structure)
  (puthash :setup (expand-file-name "setup" user-emacs-directory) directory-structure)
  (puthash :savefiles (expand-file-name "savefiles" user-emacs-directory) directory-structure)
  (puthash :snippets (expand-file-name "snippets" user-emacs-directory) directory-structure))

;; Load path configuration
(maphash '(lambda (_ directory)
            (add-to-list 'load-path directory))
         directory-structure)

;; Require all setup packages
(dolist (package '(setup-packages
                   setup-configuration-tools
                   setup-functions
                   setup-appearance
                   setup-editor
                   setup-evil
                   setup-global-keymaps

                   setup-undo-tree
                   setup-ace-jump-mode
                   setup-ido
                   setup-yasnippet
                   setup-smex
                   setup-expand-region
                   setup-markdown-mode
                   setup-smartparens))
  (require package))
