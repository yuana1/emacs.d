;;; init-java.el --- Support for java -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

(require-package 'lsp-java)
(add-hook 'java-mode-hook #'lsp-deferred)

(defun mvnCreate ()  
  (interactive)
  (async-shell-command "mvn archetype:generate -DarchetypeCatalog=internal")
  )
(defun mvnStop()
  (interactive)
  
  )
(require-package 'fullframe)
(fullframe mvnCreate mvnStop)
(provide 'init-java)
;;; init-java.el ends here
