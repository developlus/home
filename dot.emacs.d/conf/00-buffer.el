;; バッファ切り替えの簡略化
(iswitchb-mode t)
;(icomplete-mode t)

;; [C-x C-b]でバッファリストを開く時に、ウィンドウを分割しない
(global-set-key "\C-x\C-b" 'buffer-menu)

;; [reference to free variable]回避
(defvar iswitchb-mode-map "")
(add-hook 'iswitchb-define-mode-map-hook
	  (lambda ()
	    (define-key iswitchb-mode-map "\C-n" 'iswitchb-next-match)
	    (define-key iswitchb-mode-map "\C-p" 'iswitchb-prev-match)
	    (define-key iswitchb-mode-map "\C-f" 'iswitchb-next-match)
	    (define-key iswitchb-mode-map "\C-b" 'iswitchb-prev-match)))

;; 画面分割時にウィンドウ移動を簡略化
;; [assignment to free variable]回避
(setq windmove-wrap-around t)

;; 画面分割時にShift+矢印キーでウインドを移動
(windmove-default-keybindings)

;; 入力完了後に候補バッファを自動的に閉じる
(when (locate-library "lcomp")
  (require 'lcomp)
  (lcomp-install))

;; バッファの再読み込み
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
