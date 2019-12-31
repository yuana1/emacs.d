(require-package 'projectile)

(when (maybe-require-package 'projectile)
  (add-hook 'after-init-hook 'projectile-mode)
  (after-load 'projectile
	      (setq projectile-completion-system 'ivy)

	      (define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
	      (define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
	      ))
(provide 'init-projectile)
