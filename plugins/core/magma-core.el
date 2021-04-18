;;; magma-core.el -*- lexical-binding: t -*-


;; Use essential packages 

(eval-and-compile ; `borg'
    (add-to-list 'load-path (expand-file-name "lib/borg" user-emacs-directory))
    (require 'borg)
     (borg-initialize))

(progn ;    `use-package'
    (require  'use-package)
      (setq use-package-verbose t))

(use-package dash)


;; Use autocompile to ensure that emacs never loads outdated bytecompiled files

(use-package auto-compile
   :config
   (setq auto-compile-display-buffer               nil)
   (setq auto-compile-mode-line-counter            t)
   (setq auto-compile-source-recreate-deletes-dest t)
   (setq auto-compile-toggle-deletes-nonlib-dest   t)
   (setq auto-compile-update-autoloads             t))

;; GCMH does GC when the user is idle.
(use-package gcmh
	:init
	(setq gcmh-idle-delay 5
	      gcmh-high-cons-threshold (* 16 1024 1024))  ; 16mb
	:config 
	(gcmh-mode))

;;Slow down the UI being updated to improve performace
(setq idle-update-delay 1.0)

;; Inhibit fontification while receiving input which
;; can improve performance.
(setq redisplay-skip-fontification-on-input t)

;; Disable bidirectional text rendering to improve performance
(setq-default bidi-display-reordering 'left-to-right
              bidi-paragraph-direction 'left-to-right)
(use-package all-the-icons)
(provide 'magma-core)
