;;; init-flycheck.el --- Flycheck setup -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(use-package flycheck
  :config
  (global-flycheck-mode))

(use-package flycheck-pos-tip
  :if window-system
  :config
  (flycheck-pos-tip-mode))

(use-package flycheck-inline
  :if (not window-system)
  :config
  (global-flycheck-inline-mode))



(provide 'init-flycheck)
;;; init-flycheck.el ends here
