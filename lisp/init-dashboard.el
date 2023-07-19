;;; init-dashboard.el --- My special greeting to myself -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:



(use-package dashboard
  :init
  (setq dashboard-banner-logo-title "Doctor")
  (setq dashboard-startup-banner "~/.emacs.d/images/pantsmacs.txt")
  (setq dashboard-center-content t)
  (setq dashboard-display-icons-p t) ;; display icons on both GUI and terminal
  (setq dashboard-icon-type 'all-the-icons) ;; use `all-the-icons' package
  (setq dashboard-set-heading-icons t)
  :config
  (dashboard-setup-startup-hook)
  (setq initial-buffer-choice (lambda () (get-buffer-create "*dashboard*"))))



(provide 'init-dashboard)
;;; init-dashboard.el ends here
