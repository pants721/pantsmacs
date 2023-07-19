;;; init-vertico.el --- Minibuffer completion -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(use-package vertico
  :init
  (vertico-mode)
  :bind (:map vertico-map
              ("TAB" . vertico-next)
              ("<backtab>" . vertico-previous)
              ("RET" . vertico-directory-enter)
              ("DEL" . vertico-directory-delete-char)
              ("M-DEL" . vertico-directory-delete-word)))

(use-package consult
  :after vertico)

;; Orderless completion style
(use-package orderless
  :init
  (setq completion-styles '(orderless basic)
        completion-category-defaults nil
        completion-category-overrides '((file (styles partial-completion)))))



(provide 'init-vertico)
;;; init-vertico.el ends here
