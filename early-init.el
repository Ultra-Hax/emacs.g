;;; early-init.el --- earliest birds               -*- no-byte-compile: t lexical-binding: t -*-


;; Disable GC until gcmh-mode is loaded
(setq gc-cons-threshold most-positive-fixnum)


;; Inhibit resizing frame greatly improving performace
(setq frame-inhibit-implied-resize t)

(setq load-prefer-newer t)


;; Enable deffered compilation for Emacs native comp.
(setq comp-deferred-compilation t)

;; Prevent Emacs from pinging things that look like domain names.
(setq ffap-machine-p-known 'reject)

;; Disable gui elements before they are initialized.
(push '(menu-bar-lines . 0) default-frame-alist)
(push '(tool-bar-lines . 0) default-frame-alist)
(push '(vertical-scroll-bars) default-frame-alist)

(when (featurep 'ns)
    (push '(ns-transparent-titlebar . t) default-frame-alist))
(let ((dir (file-name-directory (or load-file-name buffer-file-name))))
  (add-to-list 'load-path (expand-file-name "lib/packed" dir))
  (add-to-list 'load-path (expand-file-name "lib/auto-compile" dir)))
(require 'auto-compile)
(auto-compile-on-load-mode)
(auto-compile-on-save-mode)

;;Force plugins at head to reduce startup time.
(defun update-load-path (&rest _)
    "Update `load-path'."
      (dolist (dir '("plugins"))
	    (push (expand-file-name dir user-emacs-directory) load-path)))

;; Add plugins dir to load path.
(let ((default-directory  "~/.emacs.d/plugins/"))
    (normal-top-level-add-subdirs-to-load-path))


;; Prevent package.el from loading
(setq package-enable-at-startup nil)



;; Local Variables:
;; no-byte-compile: t
;; indent-tabs-mode: nil
;; End:
;;; early-init.el ends here
