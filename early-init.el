;;; early-init.el --- earliest birds               -*- lexical-binding: t -*-


;; Disable GC until gcmh-mode is loaded
(setq gc-cons-threshold most-positive-fixnum)


;; Inhibit resizing frame greatly improving performace

(setq frame-inhibit-implied-resize t)

(setq load-prefer-newer t)

(let ((dir (file-name-directory (or load-file-name buffer-file-name))))
  (add-to-list 'load-path (expand-file-name "lib/packed" dir))
  (add-to-list 'load-path (expand-file-name "lib/auto-compile" dir)))
(require 'auto-compile)
(auto-compile-on-load-mode)
(auto-compile-on-save-mode)

(setq package-enable-at-startup nil)

(with-eval-after-load 'package
  (add-to-list 'package-archives
               (cons "melpa" "https://melpa.org/packages/")
               t)
  (add-to-list 'package-archives
               (cons "org" "https://orgmode.org/elpa/")
               t))

;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; End:
;;; early-init.el ends here
