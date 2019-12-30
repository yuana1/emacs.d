;;; init-vue.el --- Support for vue -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require-package 'web-mode)
(require-package 'lsp-mode)
(add-hook 'web-mode-hook #'lsp-deferred)
;; Optionally
(require-package 'lsp-ui)
(require-package 'company-lsp)
(require-package 'lsp-treemacs)
;; optionally if you want to use debugger
(require-package 'dap-mode)

(provide 'init-vue)
;;; init-rust.el ends here
