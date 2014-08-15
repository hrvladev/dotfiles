(require 'cl)
(require 'package)

;; ELPA repositories
(setq package-archives '(("gnu"       . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa"     . "http://melpa.milkbox.net/packages/")))

(package-initialize)

(defun packages-installed-p (packages)
  (every 'package-installed-p packages))

(defun install-package (package)
  (unless (package-installed-p package)
    (package-install package)))

(defun install-packages (packages)
  (unless (packages-installed-p packages)
    (package-refresh-contents)
    (mapc 'install-package packages)))

;; Install needed packages
(let ((packages '(; Misc
                  use-package
                  rainbow-delimiters
                  golden-ratio
                  undo-tree
                  key-chord
                  evil
                  ace-jump-mode
                  ido-ubiquitous
                  yasnippet
                  smex
                  flx-ido
                  ido-vertical-mode
                  expand-region
                  smartparens
                  multiple-cursors

                  markdown-mode
                  haml-mode
                  coffee-mode

                  ; Themes
                  zenburn-theme
                  monokai-theme

                  ; Clojure
                  clojure-mode
                  clojure-test-mode
                  cider)))
  (install-packages packages))

(provide 'setup-packages)
