;;; magma-core-ui.el  -*- lexical-binding: t -*-


(require 'magma-core)
(defalias 'yes-or-no-p 'y-or-n-p)

;; Show matching parenthesis

(add-hook 'prog-mode-hook 'show-paren-mode 1)

;;Disable that annoying blinking cursor.
(setq blink-cursor-mode nil)

;; Disable dialogs boxes
(setq use-dialog-box nil)

;; Enable line numbers for programming modes
(add-hook 'prog-mode-hook 'display-line-numbers-mode)

;; Install all-the-icons which is important for many UI related packages.
(use-package all-the-icons)

(provide 'magma-core-ui)
