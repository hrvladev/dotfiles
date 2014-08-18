(use-package projectile
  :init
  (projectile-global-mode)

  :config
  (progn
    (evil-declare-key 'normal projectile-mode-map
      "\\f" 'projectile-find-file
      "\\d" 'projectile-find-dir
      "\\D" 'projectile-dired
      "\\l" 'projectile-find-file-in-directory
      "\\b" 'projectile-switch-to-buffer
      "\\k" 'projectile-kill-buffers
      "\\g" 'projectile-grep
      "\\t" 'projectile-toggle-between-implementation-and-test)))

(provide 'setup-projectile)
