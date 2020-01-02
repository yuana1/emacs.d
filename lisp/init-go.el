;;; init-go.el --- Support for the Go language -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require-package 'go-mode)
(add-hook 'go-mode-hook #'lsp-deferred)



(provide 'init-go)
;;; init-rust.el ends here
