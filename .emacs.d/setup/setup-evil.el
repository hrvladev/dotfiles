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
          evil-cross-lines t)))

(provide 'setup-evil)
