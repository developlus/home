;;
;; Basic Initialization
;;
(require 'cask "~/.cask/cask.el")
(cask-initialize)

(require 'use-package)
(use-package pallet)

;(use-package init-loader
;  :config
;(set initloader-show-log-after-init nil)
  (init-loader-load "~/.emacs.d/conf")

  
;(require 'cask "~/.cask/cask.el")
;(cask-initialize)
;(require 'pallet)
;(use-package pallet)
;(require 'init-loader)
;(setq init-loader-show-log-after-init nil)
;(init-loader-load "~/.emacs.d/conf")



;;
;; Load-path Initialization
;;
(let ((default-directory (expand-file-name "~/.emacs.d/site-lisp")))
  (add-to-list 'load-path default-directory)
  (if (fboundp 'normal-top-level-add-subdirs-to-load-path)
      (normal-top-level-add-subdirs-to-load-path)))

