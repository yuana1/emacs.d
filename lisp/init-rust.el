;;; init-rust.el --- Support for the Rust language -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require-package 'rust-mode)
(require-package 'lsp-mode)
(add-hook 'rust-mode-hook #'lsp-deferred)
;; Optionally
(require-package 'lsp-ui)
(require-package 'company-lsp)
(require-package 'lsp-treemacs)
;; optionally if you want to use debugger
(require-package 'dap-mode)

(when (maybe-require-package 'flycheck-rust)
  (after-load 'rust-mode
    (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)))

(provide 'init-rust)
;;; init-rust.el ends here
