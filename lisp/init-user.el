;;; init-user.el --- User configuration -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

;; If your using my config don't use my settings choose your own
;; That being said, these are what I believe to be a resonable default
;; (although you will likely find my font choices to be unreasonable)

(require 'init-themes)

;; Basic bitch settings

(setq inhibit-startup-message t)
(setq initial-scratch-message ";; You got this!")
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(column-number-mode 1)
(show-paren-mode 1)
(setq ring-bell-function 'ignore)
(defalias 'yes-or-no-p 'y-or-n-p)
(global-display-line-numbers-mode)
(setq-default display-line-numbers 'relative)
(setq display-line-numbers-type 'relative)
(setq backup-directory-alist `(("." . "~/.emacs.d/.saves")))
(setq backup-by-copying t):
(electric-pair-mode)
(setq c-basic-offset 4) ;; Indent
(global-display-fill-column-indicator-mode) ;; Fill Column
(setq-default fill-column 80)
(add-hook 'c-mode-hook (lambda () (c-toggle-comment-style -1)))
(setq compile-command "./build.sh && ./out")
(setq-default indent-tabs-mode nil)
(set-face-italic-p 'italic nil)



;; Visual stuff

(set-frame-font "iosevka term 16" nil t)
;; (set-frame-font "source code pro 14" nil t)
;; (set-frame-font "hack 14" nil t)
;; (set-frame-font "jetbrainsmono 14" nil t)
(setq evil-insert-state-cursor '(box)) ;; Insert state box cursor
(setq max-mini-window-height 3)



(provide 'init-user)
;;; init-user.el ends here
