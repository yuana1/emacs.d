;;; init-vue.el --- Support for vue -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require-package 'lsp-java)
(add-hook 'java-mode-hook #'lsp-deferred)
;; Optionally
(require-package 'lsp-ui)
(require-package 'company-lsp)
(require-package 'lsp-treemacs)
;; optionally if you want to use debugger
(require-package 'dap-mode)

(provide 'init-java)
;;; init-rust.el ends here
