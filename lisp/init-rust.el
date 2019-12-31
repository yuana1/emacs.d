(require-package 'rust-mode)
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))

(when (maybe-require-package 'lsp-mode)
  (add-hook 'rust-mode-hook #'lsp-deferred)
  )
(provide 'init-rust)
