;;; init-rust.el --- Support for the rust programming language -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(use-package rustic
  :config
  (setq rustic-lsp-client 'eglot))

(add-hook 'eglot--managed-mode-hook (lambda () (flymake-mode -1)))



(provide 'init-rust)
;;; init-rust.el ends here
