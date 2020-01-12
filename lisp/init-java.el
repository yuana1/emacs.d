;;; init-java.el --- Support for java -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require-package 'lsp-java)
(add-hook 'java-mode-hook #'lsp-deferred)

(defun mvn-create ()  
  (interactive)
  
  (async-shell-command "mvn archetype:generate -DarchetypeCatalog=internal" "mvn")
  (switch-to-buffer "mvn")
  )
(defun mvn-stop()
  (interactive)
  
  )
(require-package 'fullframe)
(fullframe mvn-create mvn-stop)


(provide 'init-java)
;;; init-java.el ends here
