;;; init-ivy.el --- Interactive completion for buffers -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(use-package ivy
  :config
  (ivy-mode)
  (setq ivy-use-virtual-buffers t)
  (setq enable-recursive-minibuffers t)
  (define-key ivy-minibuffer-map (kbd "TAB") #'ivy-next-line)
  (define-key ivy-minibuffer-map (kbd "<backtab>") #'ivy-previous-line)
  (define-key ivy-minibuffer-map (kbd "RET") #'ivy-alt-done)
  (define-key ivy-minibuffer-map (kbd "S-<return>") #'ivy-immediate-done)
  (define-key ivy-minibuffer-map (kbd "M-<return>") #'ivy-next-line-and-call)
  (define-key ivy-minibuffer-map (kbd "C-<return>") #'ivy-previous-line-and-call))

(use-package counsel
  :after ivy
  :config
  (counsel-mode))

(use-package swiper
  :after ivy)



(provide 'init-ivy)
;;; init-ivy.el ends here
