(when (not (eq window-system nil))
  (defconst my-save-frame-file
    "~/.emacs.d/.framesize"
    "path of file to save framesize.")
  (defun my-save-frame-size()
    "save to `my-save-frame-file' current framesize and position."
    (interactive)
    (let* ((param (frame-parameters (selected-frame)))
	   (current-height (frame-height))
	   (current-width (frame-width))
	   (current-top-margin (if (integerp (cdr (assoc 'top param)))
				   (cdr (assoc 'top param))
                                 0))
	   (current-left-margin (if (integerp (cdr (assoc 'left param)))
				    (cdr (assoc 'left param))
                                  0))
	   (buf nil)
	   (file my-save-frame-file)
	   )
      ;; create buffer with file
      (unless (setq buf (get-file-buffer (expand-file-name file)))
	(setq buf (find-file-noselect (expand-file-name file))))
      (set-buffer buf)
      (erase-buffer)
      (insert
       (concat
	"(set-frame-size (selected-frame) "(int-to-string current-width)" "(int-to-string current-height)")\n"
	"(set-frame-position (selected-frame) "(int-to-string current-left-margin)" "(int-to-string current-top-margin)")\n"
	))
      (save-buffer)))
  (defun my-load-frame-size()
    "re-initialize to framesize and position in `my-save-frame-file'"
    (interactive)
    (let ((file my-save-frame-file))
      (when (file-exists-p file)
        (load-file file))))
  
  (add-hook 'emacs-startup-hook 'my-load-frame-size)
  (add-hook 'kill-emacs-hook 'my-save-frame-size))
  ;(run-with-idle-timer 60 t 'my-save-frame-size)
