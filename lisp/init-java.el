;;; init-java.el --- Support for java -*- lexical-binding: t -*-
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
;;; init-java.el ends here
