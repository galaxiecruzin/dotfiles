;; -*- mode: elisp -*-

(add-to-list 'load-path "~/.emacs.d/elisp/")

(when (>= emacs-major-version 24)
  (require 'package)
  (package-initialize)
  (add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
)

(load "better-defaults")

;; disable splash screen (re-enable with o)
(setq inhibit-splash-screen t)

;; enable transient mark mode
(transient-mark-mode 1)

;;;; ORG MODE
;; enable org-mode
(require 'org)

;; make org-mode work with .org extensions
;; (add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
;; ^ is default in recent emacsen

;; david o'toole's org tutorial configuration
(define-key global-map "\C-cl" 'org-store-link)
(define-key global-map "\C-ca" 'org-agenda)
(setq org-log-done t)

;;;; EVIL MODE
;;(push "~/.emacs.d/evil" 'load-path)
;;(require 'evil)
;;(evil-mode 1)
  
