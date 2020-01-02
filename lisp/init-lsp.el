(require-package 'lsp-mode)

(after-load 'lsp-mode
  (add-hook 'lsp-mode 
	    (setq lsp-prefer-flymake nil))
  )
(require-package 'lsp-ui )
(require-package 'company-lsp ) 
(require-package 'lsp-ivy )
(require-package 'lsp-treemacs )
;; optionally if you want to use debugger
(require-package 'dap-mode)


(provide 'init-lsp)
