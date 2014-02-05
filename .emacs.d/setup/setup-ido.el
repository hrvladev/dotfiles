(use-package ido
  :init
  (ido-mode t)

  :config
  (progn
    (setq ido-everywhere t
          ido-enable-prefix nil
          ido-enable-flex-matching t
          ido-auto-merge-work-directories-length nil
          ido-create-new-buffer 'always
          ido-use-filename-at-point 'guess
          ido-use-virtual-buffers t
          ido-handle-duplicate-virtual-buffers 2
          ido-max-prospects 10)

    (use-package ido-ubiquitous
      :init
      (ido-ubiquitous-mode t))

    (use-package flx-ido
      :init
      (flx-ido-mode 1)

      :config
      (setq ido-use-faces nil))))

(provide 'setup-ido)
