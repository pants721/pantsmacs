;;; init-ranger.el --- Replace dired with ranger -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(use-package ranger
  :config
  (ranger-override-dired-mode t)
  (setq ranger-override-dired t))



(provide 'init-ranger)
;;; init-ranger.el ends here
