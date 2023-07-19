;;; init-themes.el --- My prefered colors for emacs -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(use-package autothemer)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes") ;; Load theme path

(use-package modus-themes)
(use-package ef-themes)
(use-package doom-themes)
;; (use-package color-theme-sanityinc-solarized)
;; (use-package kaolin-themes)
;; (use-package doom-themes)
;; (use-package reykjavik-theme)
;; (use-package naysayer-theme)
;; (use-package monokai-theme)
;; (use-package stimmung-themes)
;; (use-package tao-theme)
;; (use-package almost-mono-themes)
(use-package quasi-monochrome-theme)
;; (use-package sexy-monochrome-theme)

(load-theme 'doom-Iosvkem t)
;; (load-theme 'modus-vivendi t)
;; (load-theme 'ef-dark t)
;; (load-theme 'tao-yin t)

(use-package highlight-indent-guides
  :config
  (setq highlight-indent-guides-method 'character)
  (add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
  (highlight-indent-guides-mode))


(provide 'init-themes)
;;; init-themes.el ends here
