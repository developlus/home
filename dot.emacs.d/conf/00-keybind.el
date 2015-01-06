;; [Ctrl-h] -> [BackSpace]
(global-set-key "\C-h" 'delete-backward-char)

;;[help-for-help] -> [F1]
(global-set-key [f1] 'help-for-help)

;;[help-command] -> [C-x C-h]
(define-key global-map "\C-x\C-h" 'help-command)

;;[MarkSet] -> [C-@]
(global-set-key "\C-@" 'set-mark-command)

;; Suspend -> Nil
(global-set-key "\C-z" nil)
