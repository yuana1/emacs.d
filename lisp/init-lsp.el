(require-package 'lsp-mode)

(after-load 'lsp-mode
  (add-hook 'lsp-mode 
	    (setq lsp-prefer-flymake nil)
            (setq dap-mode t)
            (setq dap-ui-mode t)
            )

  )

(after-load 'treemacs-mode
  (add-hook 'treemacs-mode
            (setq treemacs-git-mode nil))
  )
(require-package 'ripgrep)
;;(require-package 'lsp-ui )
(require-package 'company-lsp) 
(require-package 'lsp-ivy )
(require-package 'lsp-treemacs )
;; optionally if you want to use debugger
(require-package 'dap-mode)
(require 'dap-java)

(provide 'init-lsp)
