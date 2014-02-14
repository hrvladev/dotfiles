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

;; Configure PATH and exec-path
(push "/usr/local/bin" exec-path)
(push "/usr/bin" exec-path)
(push (expand-file-name "~/bin") exec-path)
(setenv "PATH" (concat "/usr/local/bin:" (expand-file-name "~/bin") ":" (getenv "PATH")))

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
                   setup-smartparens
                   setup-multiple-cursors
                   setup-clojure-mode
                   setup-coffee-mode
                   setup-prolog-mode))
  (require package))
