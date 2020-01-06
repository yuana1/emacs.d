;;; package --- Summary init-misc
;;; Commentary:
;;; Code:
;; 自定义配置
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(tool-bar-mode nil)
 )

(global-set-key [(ctrl f12)] 'set-mark-command)
;;(global-set-key (kbd "C-f1") 'set-mark-command)

(setq inhibit-splash-screen t)
(desktop-save-mode 1)
;; use only one desktop
(setq desktop-path '("~/.emacs.d/"))
(setq desktop-dirname "~/.emacs.d/")

(provide 'init-misc)
;;; init-misc.el ends here
