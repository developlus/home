;; show column-number in mode-line
(column-number-mode 1)

;; show line-number in mode-line
(line-number-mode 1)

;; show eol-code in mode-line
(setq eol-mnemonic-dos "(CRLF)")
(setq eol-mnemonic-mac "(CR)")
(setq eol-mnemonic-unix "(LF)")

;; serch keyword hightlight
(setq search-hightlight t)

;; without initialized message
(setq inhibit-startup-message t)

;; set blank to scatch buffer
(setq initial-scratch-message "")

;; without tool-bar
(tool-bar-mode 0)

;; set tool-bar-style
(setq tool-var-style 'image)

;; without menu bar
;(menu-bar-mode 0)

;; without scroll-bar
(scroll-bar-mode 0)

;; parenthesis highlight
(show-paren-mode 1)

;; without linum
;(global-linum-mode nil)

;; set linum-mode to following modes
(dolist (hook (list
              'c-mode-hook
              'java-mode-hook
	      'php-mode-hook
	      'nxml-mode-hook
              'emacs-lisp-mode-hook
              'lisp-interaction-mode-hook
              'lisp-mode-hook
              'sh-mode-hook
              ))
  (add-hook hook (lambda () (linum-mode t))))

;; set padding linum-mode
(setq linum-format "%3d")

;; without backup file
(setq backup-inhibited t)

;; delete auto-seve file when exit
(setq delete-auto-save-files t)

;; save cursor place
(setq-default save-place t)
(setq save-place-file "~/.emacs.d/save-places")

;; set default-directory
(setq default-directory "~/")
