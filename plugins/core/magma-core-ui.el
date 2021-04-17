;;; magma-core-ui.el  -*- lexical-binding: t -*-

(defalias 'yes-or-no-p 'y-or-n-p)

;; Show matching parenthesis
(show-paren-mode 1)
(setq blink-cursor-mode nil)
;; Disable dialogs boxes
(setq use-dialog-box nil)

;; Enable line numbers
(add-hook 'prog-mode-hook 'linum-mode)

(provide 'magma-core-ui)
