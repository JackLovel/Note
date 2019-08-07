(require 'company-tabnine)

(add-to-list 'company-backend #'company-tabnine)

;; Trigger completion immediately.
(setq company-idle-delay 0)

;; Number the candidates (use M-1, M-2 etc to select completions).
(setq company-show-numbers t)

;;; latex config: auctex
(setenv "HOME" "/home/gog/emacs")
(add-to-list 'load-path "~/.emacs.d/elpa/auctex-12.1.2/tests/japanese")
(load "auctex.el" nil t t)
(load "preview-latex.el" nil t t)

;; xelatex编译配置
(add-hook 'LaTeX-mode-hook
  (lambda()
  (add-to-list 'TeX-command-list '("XeLaTeX" "%`xelatex%(mode)%' %t" TeX-run-TeX nil t))
  (setq TeX-command-default "XeLaTeX")
  (setq TeX-save-querynil )
  (setq TeX-show-compilation t)
))

(provide 'init-myconfig)
