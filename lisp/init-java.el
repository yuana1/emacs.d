;;; init-java.el --- Support for java -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require-package 'lsp-java)
(add-hook 'java-mode-hook #'lsp-deferred)

(provide 'init-java)
;;; init-java.el ends here
