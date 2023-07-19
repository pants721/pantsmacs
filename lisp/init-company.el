;;; init-company.el --- Completion for all types of things -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(use-package company
  :init
  (setq company-idle-delay 0.0)
  (setq company-minimum-prefix-length 1)
  :config
  (global-company-mode)
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "<tab>") #'company-select-next)
  (define-key company-active-map (kbd "<backtab>") #'company-select-previous)
  (global-set-key (kbd "C-SPC") 'company-complete))



(provide 'init-company)
;;; init-company.el ends here
