(defun cleanup-buffer ()
  "Deals with trailing whitespace, indentation and stuff."
  (interactive)

  (untabify (point-min) (point-max))
  (whitespace-cleanup))

(defun save-file-current-buffer-is-visiting ()
  "Save the file which the current buffer is visiting.
   If there isn't such file do nothing."
  (interactive)

  (if (buffer-file-name) (save-buffer)))

(defun switch-to-most-recently-visited-buffer ()
  "Switch to the most recently visited buffer."
  (interactive)

  (switch-to-buffer (other-buffer)))

(provide 'setup-functions)
