;;; init.el --- user-init-file                    -*- no-byte-compile: t lexical-binding: t -*-
;;; Early birds

;;(eval-and-compile ; `borg'
 ;; (add-to-list 'load-path (expand-file-name "lib/borg" user-emacs-directory))
  ;;(require 'borg)
  ;;(borg-initialize))

;;(progn ;    `use-package'
 ;; (require  'use-package)
  ;;(setq use-package-verbose t))

;;(use-package dash)


;; Use autocompile to ensure that emacs never loads outdated bytecompiled files

;;(use-package auto-compile
 ;; :config
  ;;(setq auto-compile-display-buffer               nil)
  ;;(setq auto-compile-mode-line-counter            t)
  ;;(setq auto-compile-source-recreate-deletes-dest t)
  ;;(setq auto-compile-toggle-deletes-nonlib-dest   t)
  ;;(setq auto-compile-update-autoloads             t))

(require 'magma-core)

;; Local Variables:
;; indent-tabs-mode: nil
;; End:
;;; init.el ends here
