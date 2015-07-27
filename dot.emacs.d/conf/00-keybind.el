;; [C-h] to [BackSpace]
(global-set-key "\C-h" 'delete-backward-char)

;;[help-for-help] to [F1]
(global-set-key [f1] 'help-for-help)

;;[help-command] to [C-x C-h]
(define-key global-map "\C-x\C-h" 'help-command)

;;[MarkSet] to [C-@]
(global-set-key "\C-@" 'set-mark-command)

;; Suspend to Nil
(global-set-key "\C-z" nil)

;; Wanderlust
(when (locate-library "wl")
  (global-set-key "\C-xm" 'wl))
