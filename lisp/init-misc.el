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
;; 默认使用utf-8
(setq default-buffer-file-coding-system 'utf-8)
;; 有限使用utf-8
(prefer-coding-system 'utf-8)
(global-set-key [(ctrl f12)] 'set-mark-command)
;; (global-set-key (kbd "C-f1") 'set-mark-command)

(setq inhibit-splash-screen t)
(desktop-save-mode 1)
;; use only one desktop
(setq desktop-path '("~/.emacs.d/"))
(setq desktop-dirname "~/.emacs.d/")

(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(require-package 'string-inflection)
(global-set-key (kbd "C-c C-u") 'string-inflection-python-style-cycle)

(setq x-select-enable-clipboard-manager nil)

(provide 'init-misc)
;;; init-misc.el ends here
