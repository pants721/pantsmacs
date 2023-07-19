;;; init-eglot.el --- Languages -*- lexical-binding: t; -*-
;;; Commentary:
;;; Code:

(use-package eglot
  :hook
  (c-mode . eglot-ensure)
  (c++-mode . eglot-ensure)
  (cc-mode . eglot-ensure)
  (python-mode . eglot-ensure)
  (js-mode . eglot-ensure)
  (typescript-mode . eglot-ensure))



(provide 'init-eglot)
;;; init-eglot.el ends here
