;;; init.el --- Load the full configuration -*- lexical-binding: t -*-
;;; Commentary:

;; This file bootstraps the configuration, which is divided into
;; a number of other files.

;;; Code:

;; Produce backtraces when errors occur: can be helpful to diagnose startup issues
;;(setq debug-on-error t)


(let ((minver "24.4"))
  (when (version< emacs-version minver)
    (error "Your Emacs is too old -- this config requires v%s or higher" minver)))
(when (version< emacs-version "25.1")
  (message "Your Emacs is old, and some functionality in this config will be disabled. Please upgrade if possible."))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(defconst *spell-check-support-enabled* nil) ;; Enable with t if you prefer

;;----------------------------------------------------------------------------
;; Adjust garbage collection thresholds during startup, and thereafter
;;----------------------------------------------------------------------------
(when (eq system-type 'windows-nt)
  (setq gc-cons-threshold (* 512 1024 1024))
  (setq gc-cons-percentage 0.5)
  (run-with-idle-timer 5 t #'garbage-collect)
  ;; 显示垃圾回收信息，这个可以作为调试用
  ;; (setq garbage-collection-messages t)
  )
;;(let ((normal-gc-cons-threshold (* 20 1024 1024))
;;      (init-gc-cons-threshold (* 128 1024 1024)))
;;  (setq gc-cons-threshold init-gc-cons-threshold)
;;  (add-hook 'emacs-startup-hook
;;           (lambda () (setq gc-cons-threshold normal-gc-cons-threshold))))

(setq package-archives '(("gnu"   . "http://mirrors.163.com/elpa/gnu/")
                         ("melpa" . "http://mirrors.163.com/elpa/melpa/")))
;;----------------------------------------------------------------------------
;; Bootstrap config
;;----------------------------------------------------------------------------
(setq custom-file (expand-file-name "custom.el" user-emacs-directory))

(require 'init-utils)
(require 'init-elpa)
(require 'init-ibuffer)
(require-package 'diminish)
(require 'init-exec-path)
(require 'init-ivy)
(require 'init-company)
(require 'init-projectile)
(require 'init-editing-utils)
(require 'init-magit)
(require 'init-flycheck)
(require 'init-smex)
(require 'init-misc)

(require 'init-lsp)
(require 'init-rust)
(require 'init-java)
(require 'init-go)
(require 'init-web-js-ts-react-vue)


;;----------------------------------------------------------------------------
;; Allow access from emacsclient
;;----------------------------------------------------------------------------
(add-hook 'after-init-hook
          (lambda ()
            (require 'server)
            (unless (server-running-p)
              (server-start))))

;;----------------------------------------------------------------------------
;; Variables configured via the interactive 'customize' interface
;;----------------------------------------------------------------------------
(when (file-exists-p custom-file)
  (load custom-file))



(provide 'init)

;; Local Variables:
;; coding: utf-8
;; no-byte-compile: t
;; End:
;;; init.el ends here
