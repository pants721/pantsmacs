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

(load-theme 'reykjavik t)

;; TODO: Move elsewhere
(use-package highlight-indent-guides
  :config
  (setq highlight-indent-guides-method 'character)
  (add-hook 'prog-mode-hook 'highlight-indent-guides-mode)
  (highlight-indent-guides-mode))


(provide 'init-themes)
;;; init-themes.el ends here
