;;; init-hl-todo.el --- Highlight TODO's and such -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(use-package hl-todo
    :hook (prog-mode . hl-todo-mode)
    :config
    (setq hl-todo-highlight-punctuation ":"
          hl-todo-keyword-faces
          `(("TODO"       font-lock-constant-face bold)
            ("FIXME"      error bold)
            ("HACK"       warning bold)
            ("REVIEW"     font-lock-keyword-face bold)
            ("NOTE"       success bold)
            ("DEPRECATED" font-lock-doc-face bold))))



(provide 'init-hl-todo)
;;; init-hl-todo.el ends here
