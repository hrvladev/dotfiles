(use-package ido
  :init
  (ido-mode t)

  :config
  (progn
    (setq ido-enable-prefix nil
          ido-enable-flex-matching t
          ido-auto-merge-work-directories-length nil
          ido-create-new-buffer 'always
          ido-use-filename-at-point 'guess
          ido-use-virtual-buffers t
          ido-handle-duplicate-virtual-buffers 2
          ido-max-prospects 10)

    (use-package ido-ubiquitous
      :init
      (ido-ubiquitous-mode t))))

(provide 'setup-ido)
