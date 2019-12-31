;;; init-vue.el --- vue support -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:

(require-package 'web-mode)
(add-to-list 'auto-mode-alist '("\\.vue\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(require-package 'lsp-mode)
(add-hook 'web-mode-hook #'lsp-deferred)
(require-package 'lsp-ui)
(require-package 'company-lsp)
;;(require-package 'helm-lsp)
(require-package 'lsp-treemacs)
;; optionally if you want to use debugger
(require-package 'dap-mode)
(provide 'init-vue)
;;; init-vue.el ends here
