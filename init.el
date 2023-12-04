(setq custom-file (locate-user-emacs-file "custom.el"))

;;; straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)
(setq straight-use-package-by-default t)

(use-package no-littering)

;;; Evil
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

;;; Company
(use-package company
  :init
  (setq company-idle-delay 0.0)
  (setq company-minimum-prefix-length 1)
  :config
  (global-company-mode)
  (define-key company-active-map (kbd "M-n") nil)
  (define-key company-active-map (kbd "M-p") nil)
  (define-key company-active-map (kbd "<tab>") #'company-select-next)
  (define-key company-active-map (kbd "<backtab>") #'company-select-previous)
  (global-set-key (kbd "C-SPC") 'company-complete))

;;; Vertico
(use-package vertico
  :init
  (vertico-mode)
  :bind (:map vertico-map
     ("TAB" . vertico-next)
     ("<backtab>" . vertico-previous)
     ("RET" . vertico-directory-enter)
     ("DEL" . vertico-directory-delete-char)
     ("M-DEL" . vertico-directory-delete-word)))

(use-package consult
  :after vertico)

(use-package orderless
  :init
  (setq completion-styles '(orderless basic)
        completion-category-defaults nil
        completion-category-overrides '((file (styles partial-completion)))))

;;; Lsp
(use-package rustic
  :config
  (setq rustic-lsp-client 'eglot))

(add-hook 'eglot--managed-mode-hook (lambda () (flymake-mode -1)))

;;; Vterm
(use-package vterm)
(use-package vterm-toggle)

;;; Keybinds

(use-package general
  :config
  (general-evil-setup))

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

(defun scratch-buffer ()
  "Opens a scratch buffer."
  (interactive)
  (switch-to-buffer (make-temp-name "scratch-")))

(leader-prefix
  :states 'normal
  "<tab>" 'switch-last-buffer
  ";"     'scratch-buffer
  "x"     'vterm-toggle)


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
  ;; ;; Ivy binds
  ;; "f" 'counsel-find-file
  ;; "b" 'counsel-switch-buffer
  ;; "l" 'counsel-grep-or-swiper ;; l for "find-line"
  ;; "L" 'counsel-grep-or-swiper-backward
  ;; Vertico binds
  "f" 'find-file
  "b" 'consult-buffer
  "l" 'consult-line
  "r" 'consult-recent-file
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
  "h" 'evil-window-left
  "j" 'evil-window-down
  "k" 'evil-window-top
  "l" 'evil-window-right
  "s" 'evil-window-split
  "v" 'evil-window-vsplit
  "c" 'evil-window-delete)



;; Buffer ocntrols

(general-create-definer buffer-prefix
  :prefix "SPC b")

(buffer-prefix
  :states 'normal
  "n" 'evil-next-buffer
  "p" 'evil-prev-buffer
  "d" 'evil-delete-buffer)



;; Dired (ranger)

(use-package ranger
  :config
  (ranger-override-dired-mode t)
  (setq ranger-override-dired t))

(general-create-definer dired-prefix
  :prefix "SPC d")

(dired-prefix
  :states 'normal
  "d" 'dired
  "D" 'ranger)



;; General help

(general-create-definer help-prefix
  :prefix "SPC h")

(help-prefix
  :states 'normal
  "t" 'consult-theme)

;;; Settings
(setq inhibit-startup-message t)
(setq initial-scratch-message ";; You got this!")
(tool-bar-mode -1)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(column-number-mode 1)
(show-paren-mode 1)
(setq ring-bell-function 'ignore)
(defalias 'yes-or-no-p 'y-or-n-p)
(global-display-line-numbers-mode)
(setq-default display-line-numbers 'relative)
(setq display-line-numbers-type 'relative)
(setq backup-directory-alist `(("." . "~/.emacs.d/.saves")))
(setq backup-by-copying t):
(electric-pair-mode)
(setq c-basic-offset 4) ;; Indent
;; (global-display-fill-column-indicator-mode) ;; Fill Column
;; (setq-default fill-column 80)
(add-hook 'c-mode-hook (lambda () (c-toggle-comment-style -1)))
(setq compile-command "./build.sh && ./out")
(setq-default indent-tabs-mode nil)
(set-face-italic-p 'italic nil)
(global-so-long-mode)
(load-theme 'modus-vivendi t)
(set-frame-font "iosevka 18" nil t)
(setq evil-insert-state-cursor '(box)) ;; Insert state box cursor
(setq make-backup-files nil)
