(use-package multiple-cursors
  :pre-load
  (setq mc/list-file (expand-file-name ".mc-lists.el" (gethash :savefiles directory-structure)))

  :config
  (progn
    ;; Keymaps
    (define-key evil-visual-state-map "W" 'mc/edit-lines)
    (define-key evil-visual-state-map "L" 'mc/mark-next-like-this)
    (define-key evil-visual-state-map "H" 'mc/mark-previous-like-this)
    (define-key evil-visual-state-map "E" 'mc/mark-all-like-this)))

(provide 'setup-multiple-cursors)
