(use-package evil
  :init
  (evil-mode 1)

  :config
  (progn
    (use-package key-chord
      :init
      (key-chord-mode 1)

      :config
      (key-chord-define evil-insert-state-map "jk" 'evil-normal-state))

    (setq evil-shift-width 2
          evil-move-cursor-back nil
          evil-cross-lines t)

    (add-hook 'evil-insert-state-exit-hook 'save-file-current-buffer-is-visiting)))

(provide 'setup-evil)
