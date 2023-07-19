;;; init-magit.el --- Git porcelain setup -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(use-package magit)

(use-package magit-delta
  :after magit
  :hook (magit-mode . magit-delta-mode))


(provide 'init-magit)
;;; init-magit.el ends here
