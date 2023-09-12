;;; init-evil.el --- Superior text editing experience -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(use-package evil
  :init
  (setq evil-disable-insert-state-bindings t)
  (setq evil-want-keybinding nil)
  (setq evil-want-C-u-scroll t)
  :config
  (evil-mode)
  (define-key evil-normal-state-map (kbd "C-r") 'undo-redo))

(use-package evil-collection
  :after evil
  :config
  (evil-collection-init))

(use-package evil-commentary
  :after evil
  :config
  (evil-commentary-mode))

(use-package evil-mc
  :after evil
  :config
  (global-evil-mc-mode 1))



(provide 'init-evil)
;;; init-evil.el ends here
