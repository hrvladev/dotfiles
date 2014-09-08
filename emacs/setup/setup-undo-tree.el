(use-package undo-tree
  :config
  (progn
    ;; Keymaps
    (define-key evil-normal-state-map " u" 'undo-tree-visualize)))

(provide 'setup-undo-tree)
