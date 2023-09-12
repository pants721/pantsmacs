;;; init-modeline.el --- My silly little modeline -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

;; (use-package doom-modeline
;;   :init
;;   (setq doom-modeline-icon nil)
;;   :config
;;   (doom-modeline-mode))

(use-package nyan-mode
  :config
  (nyan-mode)
  (setq nyan-wavy-trail t)
  (setq nyan-animate-nyancat nil)
  (nyan-start-animation))



(provide 'init-modeline)
;;; init-modeline.el ends here
