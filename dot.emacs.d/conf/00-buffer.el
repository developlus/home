;; Switch buffer
(iswitchb-mode t)

;; [C-x C-b] to show buffer list without window separate
(global-set-key "\C-x\C-b" 'buffer-menu)

;; escape [reference to free variable]
(defvar iswitchb-mode-map "")
(add-hook 'iswitchb-define-mode-map-hook
	  (lambda ()
	    (define-key iswitchb-mode-map "\C-n" 'iswitchb-next-match)
	    (define-key iswitchb-mode-map "\C-p" 'iswitchb-prev-match)
	    (define-key iswitchb-mode-map "\C-f" 'iswitchb-next-match)
	    (define-key iswitchb-mode-map "\C-b" 'iswitchb-prev-match)))

;; escape [assignment to free variable]
(setq windmove-wrap-around t)

;; [Shift cursorKey] to move window
(windmove-default-keybindings)

;; close buffer when input complete
(when (locate-library "lcomp")
  (require 'lcomp)
  (lcomp-install))

;; revert buffer 
(defun revert-buffer-no-confirm (&optional force-reverting)
  "Interactive call to revert-buffer. Ignoring the auto-save
 file and not requesting for confirmation. When the current buffer
 is modified, the command refuses to revert it, unless you specify
 the optional argument: force-reverting to true."
  (interactive "P")
  ;; (message "force-reverting value is %s" force-reverting)
  (if (or force-reverting (not (buffer-modified-p)))
      (revert-buffer :ignore-auto :noconfirm)
    (error "The buffer has been modified")))
(global-set-key "\M-r" 'revert-buffer-no-confirm)
