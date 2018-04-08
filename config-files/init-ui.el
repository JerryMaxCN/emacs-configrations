;; Emacs UI设置


(setq initial-frame-alist (quote ((fullscreen . maximized))))
(setq inhibit-splash-screen t)
(setq ring-bell-function 'ignore)
(tool-bar-mode -1)
(global-linum-mode t)
(scroll-bar-mode -1)
(setq-default cursor-type 'box)
(global-hl-line-mode t)
(set-default-font "CamingoCode 12")
(load-theme 'spacemacs-light t)

(provide 'init-ui)
