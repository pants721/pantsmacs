;;; init-themes.el --- My prefered colors for emacs -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(use-package autothemer)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes") ;; Load theme path

(use-package modus-themes)
(use-package ef-themes)
(use-package doom-themes)
(use-package naysayer-theme)
(use-package gruber-darker-theme)
(use-package color-theme-sanityinc-solarized)
;; (use-package kaolin-themes)

;; (load-theme 'doom-solarized-dark t)
;; (load-theme 'reykjavik t)
;; (load-theme 'gruber-darker t)
;; (load-theme 'naysayer t)
;; (load-theme 'ef-bio t)
(load-theme 'modus-vivendi t)
;; (load-theme 'ef-dark t)
;; (load-theme 'monokai t)
;; (load-theme 'sanityinc-solarized-dark t)

;; TODO: Move elsewhere
;; (use-package highlight-indent-guides
;;   :config
;;   (setq highlight-indent-guides-method 'character)
;;   (add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
;;   (highlight-indent-guides-mode))

(use-package tree-sitter-langs)
(use-package tree-sitter
  :config
  (global-tree-sitter-mode)
  (add-hook 'tree-sitter-after-on-hook #'tree-sitter-hl-mode))

(provide 'init-themes)
;;; init-themes.el ends here
