;;; init-vue.el --- vue support -*- lexical-binding: t -*-
;;; Commentary:

;;; Code:
(require-package 'web-mode)
(require-package 'prettier-js)
(require-package 'add-node-modules-path)
(add-to-list 'auto-mode-alist '("\\.vue\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.css\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.js\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.ts\\'" . web-mode))


(require-package 'lsp-mode)
(add-hook 'web-mode-hook #'lsp-deferred)
(eval-after-load 'web-mode
  '(progn
     (add-hook 'web-mode-hook '(lambda ()
				 (setq web-mode-markup-indent-offset 2
				       web-mode-css-indent-offset 2
				       web-mode-code-indent-offset 2)
                                 ))
     (add-hook 'web-mode-hook #'add-node-modules-path)
     (add-hook 'web-mode-hook #'prettier-js-mode)))

(provide 'init-web-js-ts-react-vue)
;;; init-web-js-ts-react-vue.el ends here
