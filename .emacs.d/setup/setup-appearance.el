;; Remove the menu bar, tool bar and scroll bar
(dolist (bar-mode '(menu-bar-mode tool-bar-mode scroll-bar-mode))
  (when (fboundp bar-mode) (funcall bar-mode -1)))

;; Remove startup screen and message in the minibuffer
(setq inhibit-startup-screen t)
(defadvice display-startup-echo-area-message
  (around disable-display-startup-echo-area-message activate))

;; Highlight matching parentheses when the point is on them
;; (show-paren-mode 1)
;; (setq show-paren-style 'parentheses)

;; Enable Rainbow Delimiters in all programming-related modes
(use-package rainbow-delimiters
  :init
  (global-rainbow-delimiters-mode))

;; Disable cursor's blinking
(blink-cursor-mode -1)

;; Toggle line highlight in all buffers
(global-hl-line-mode 1)

;; Indicate empty lines on the left fringe
(set-default 'indicate-empty-lines t)

;; Nice scrolling
(setq mouse-wheel-scroll-amount '(2 ((shift) . 1))
      mouse-wheel-progressive-speed nil
      mouse-wheel-follow-mouse 't
      scroll-step 1
      scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

;; Visualize trailing blanks, tabs, empty lines at beginning and/or end of
;; buffer and lines whose have columns beyond 80
(setq whitespace-line-column 80
      whitespace-style '(face tabs empty trailing lines-tail))

(global-whitespace-mode t)

;; Show line and column number
(line-number-mode t)
(column-number-mode t)

;; Replace “yes or no” prompt with “y or n”
(fset 'yes-or-no-p 'y-or-n-p)

;; Custom frame title
(setq frame-title-format
      '("" (:eval (if (buffer-file-name)
                      (abbreviate-file-name (buffer-file-name))
                    "%b"))))

;; Set default font
(set-default-font "Monospace-11")

;; Set default theme
(load-theme 'zenburn t)

(provide 'setup-appearance)
