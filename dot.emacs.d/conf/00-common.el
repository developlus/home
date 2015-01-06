;; モードライン行の列表示
(column-number-mode 1)

;; モードライン行の行表示
(line-number-mode 1)

;; モードライン行の改行コード表示
(setq eol-mnemonic-dos "(CRLF)")
(setq eol-mnemonic-mac "(CR)")
(setq eol-mnemonic-unix "(LF)")

;; 検索結果ハイライト
(setq search-highlight t)

;; 起動メッセージ省略
(setq inhibit-startup-message t)

;; 初期バッファのメッセージセット（空白）
(setq initial-scratch-message "")

;; スタートアップ時エコー領域のメッセージ
;(setq inhibit-startup-echo-area-message -1)

;; ツールバー・メニューバー・スクロールバーの表示
(tool-bar-mode 0)
(setq tool-bar-style 'image)
;(menu-bar-mode 0)
;(scroll-bar-mode 0)
(scroll-bar-mode 0)

;; 対応する括弧をハイライト
(show-paren-mode 1)

;; 行番号を非表示
;(global-linum-mode nil)
;; 行番号を表示するモード設定
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
;; 行番号表示のパディング
(setq linum-format "%3d")

;; バックアップファイルを作成しない
(setq backup-inhibited t)

;; 終了時にオートセーブファイルを消す
(setq delete-auto-save-files t)

;; カーソル位置を記憶
(setq-default save-place t)
(setq save-place-file "~/.emacs.d/save-places")

;; 初期ディレクトリを設定
(setq default-directory "~/")
