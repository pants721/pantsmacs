;;; init-amx.el --- Setup amx (M-x replacement) -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(use-package amx
  :config
  (amx-initialize)
  :bind
  ("M-x" . 'amx)
  ("M-X" . 'amx-major-mode-commands)
  ("C-c C-c M-x" . 'execute-extended-command))



(provide 'init-amx)
;;; init-amx.el ends here
