(use-package multiple-cursors
  :pre-load
  (setq mc/list-file (expand-file-name ".mc-lists.el" (gethash :savefiles directory-structure)))

  :config
  (progn
    ;; Keymaps
    (define-key evil-visual-state-map "mn" 'mc/mark-next-like-this)
    (define-key evil-visual-state-map "ma" 'mc/mark-all-like-this)))

(provide 'setup-multiple-cursors)
