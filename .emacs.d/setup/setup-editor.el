;; Don't make backup and autosave files
(setq make-backup-files nil)
(setq auto-save-default nil)

;; Don't use tabs to indent
(setq-default indent-tabs-mode nil
              tab-width 8)

;; Delete the selection with a keypress
(delete-selection-mode t)

;; Revert buffers automatically when underlying files are changed externally
(global-auto-revert-mode t)

;; Automatic parens pairing
(electric-pair-mode t)

;; Incremental minibuffer completion
(icomplete-mode 1)

;; Enable narrowing commands
(put 'narrow-to-region 'disabled nil)
(put 'narrow-to-page 'disabled nil)
(put 'narrow-to-defun 'disabled nil)

;; Meaningful names for buffers with the same name
(use-package uniquify
  :init
  (progn
    (setq uniquify-buffer-name-style 'forward)
    (setq uniquify-separator "/")
    (setq uniquify-after-kill-buffer-p t)
    (setq uniquify-ignore-buffers-re "^\\*")))

;; Use shift + arrow keys to switch between visible buffers
(use-package windmove
  :init
  (windmove-default-keybindings))

;; Clean up obsolete buffers automatically
(use-package midnight)

;; Enable winner-mode to manage window configurations
(winner-mode 1)

;; Enable golden ration resizing
(use-package golden-ratio
  :init
  (golden-ratio-mode 1))

;; List of expansion functions tried in order by hippie-expand
(setq hippie-expand-try-functions-list '(try-expand-dabbrev
                                         try-expand-dabbrev-all-buffers
                                         try-expand-dabbrev-from-kill
                                         try-complete-file-name-partially
                                         try-complete-file-name
                                         try-expand-all-abbrevs
                                         try-expand-list
                                         try-expand-line
                                         try-complete-lisp-symbol-partially
                                         try-complete-lisp-symbol))

;;; Hooks

;; Cleanup buffer and keep it decent on save
(add-hook 'before-save-hook 'cleanup-buffer)

(provide 'setup-editor)
