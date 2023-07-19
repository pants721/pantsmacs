;;; init.el --- Entry point for emacs configuration -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; Make emacs use custom.el for custom content
(setq custom-file (locate-user-emacs-file "custom.el"))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

;; TODO: todo highlights
;; TODO: Elisp

(require 'init-elpa)

(require 'init-dashboard)

(require 'init-evil)
(require 'init-which-key)
(require 'init-ivy)
(require 'init-amx)
(require 'init-magit)
(require 'init-themes)
(require 'init-modeline)
(require 'init-eglot)
(require 'init-company)
(require 'init-flycheck)
(require 'init-org)
(require 'init-hl-todo)
(require 'init-ranger)

(require 'init-rust)
(require 'init-typescript)

(require 'init-general)
(require 'init-keybinds)

(require 'init-user)

(provide 'init)
;;; init.el ends here
