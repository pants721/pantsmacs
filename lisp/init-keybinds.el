;;; init-keybinds.el ---  -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

;; NOTE: This is not the file that defines the bulk of my keybinds.
;; That file is init-general.el as I like leader key chords and general has amazing support for them

(require 'init-general)


;; Text zoom
(global-set-key (kbd "C-=") 'text-scale-increase)
(global-set-key (kbd "C--") 'text-scale-decrease)
(global-set-key (kbd "C-0") 'text-scale-mode) ;; Reset font size

;; Misc

(define-key minibuffer-local-map (kbd "ESC") 'keyboard-escape-quit) ;; One press of esc quits minibuffer



;; Leader

;; Jk for evil esc
(general-imap "j"
  (general-key-dispatch 'self-insert-command
    :timeout 0.25
    "k" 'evil-normal-state))



;; Base Leader

(general-create-definer leader-prefix
  :prefix "SPC")

(defun switch-last-buffer ()
  "Toggle between last 2 buffers."
  (interactive)
  (switch-to-buffer (other-buffer (current-buffer) 1)))

(leader-prefix
  :states 'normal
  "<tab>" 'switch-last-buffer)



;; Find

(general-create-definer find-prefix
  :prefix "SPC f")

;; TODO: Make this not .emacs.d specific (i.e. ~/.config/emacs support)
(defun config-find-file ()
  "Find files in /lisp config directory."
  (interactive)
  (let ((default-directory "~/.emacs.d/lisp/"))
  (call-interactively 'find-file)))

(defun personal-config-file ()
  "Open personal configuration file (init-user.el)."
  (interactive)
  (find-file "~/.emacs.d/lisp/init-user.el"))

(defun org-find-file ()
  "Find files int ~/org directory."
  (interactive)
  (let ((default-directory "~/org/"))
  (call-interactively 'find-file)))

(find-prefix
  :states 'normal
  "f" 'counsel-find-file
  "b" 'counsel-switch-buffer
  "l" 'counsel-grep-or-swiper ;; l for "find-line"
  "L" 'counsel-grep-or-swiper-backward
  "c" 'config-find-file
  "P" 'personal-config-file
  "o" 'org-find-file)



;; Magit

(general-create-definer magit-prefix
  :prefix "SPC m")

(magit-prefix
  :states 'normal
  "s" 'magit-status
  "l" 'magit-log
  "c" 'magit-checkout
  "C" 'magit-commit
  "b" 'magit-branch
  "P" 'magit-push)



;; Flycheck

(general-create-definer flycheck-prefix
  :prefix "SPC !")

(flycheck-prefix
  :states 'normal
  "n" 'flycheck-next-error
  "p" 'flycheck-next-error)



;; Compilation

(general-create-definer compile-prefix
  :prefix "SPC c")

(compile-prefix
  :states 'normal
  "c" 'recompile
  "C" 'compile
  "p" 'project-compile)



;; Window controls

(general-create-definer window-prefix
  :prefix "SPC w")

(window-prefix
  :states 'normal
  "s" 'evil-window-split
  "v" 'evil-window-vsplit
  "c" 'evil-window-delete)



;; Dired (ranger)

(require 'init-ranger)

(general-create-definer dired-prefix
  :prefix "SPC d")

(dired-prefix
  :states 'normal
  "d" 'dired
  "D" 'ranger)



(provide 'init-keybinds)
;;; init-keybinds.el ends here
