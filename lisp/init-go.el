;;; init-go.el --- Support for the Go language -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require-package 'go-mode)
(add-hook 'go-mode-hook #'lsp-deferred)

(require-package 'go-tag)
(setq go-tag-args (list "-transform" "snakecase"))
(with-eval-after-load 'go-mode
  (define-key go-mode-map (kbd "C-c t a") #'go-tag-add)
  (define-key go-mode-map (kbd "C-c t r") #'go-tag-remove))

(provide 'init-go)
;;; init-rust.el ends here
