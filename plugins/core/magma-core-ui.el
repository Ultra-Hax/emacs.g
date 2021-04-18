;;; magma-core-ui.el  -*- lexical-binding: t -*-

(defalias 'yes-or-no-p 'y-or-n-p)

;; Show matching parenthesis

(add-hook 'prog-mode-hook 'show-paren-mode 1)

;;Disable that annoying blinking cursor.
(setq blink-cursor-mode nil)

;; Disable dialogs boxes
(setq use-dialog-box nil)

;; Enable line numbers for programming modes
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

(use-package all-the-icons
	:commands (all-the-icons-octicon
                   all-the-icons-faicon
                   all-the-icons-fileicon
                   all-the-icons-wicon
                   all-the-icons-material
  	           all-the-icons-alltheicon))
(provide 'magma-core-ui)
