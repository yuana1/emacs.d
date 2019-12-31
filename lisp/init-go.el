;;; init-go.el --- Support for the Go language -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require-package 'go-mode)
(require-package 'lsp-mode)
(add-hook 'go-mode-hook #'lsp-deferred)
;; Optionally
(require-package 'lsp-ui)
(require-package 'company-lsp)
(require-package 'lsp-treemacs)
;; optionally if you want to use debugger
(require-package 'dap-mode)



(provide 'init-go)
;;; init-rust.el ends here
