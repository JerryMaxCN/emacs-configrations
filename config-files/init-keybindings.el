;; Emacs快捷键绑定

;; 快速打开init.el
(global-set-key (kbd "<f2>") 'open-my-init-file)

;; 打开最近使用的文件列表
(global-set-key "\C-x\ \C-r" 'recentf-open-files)

;; 格式化当前buffer
(global-set-key (kbd "C-M-f") 'align-current)

;; ivy counsel swiper
(global-set-key "\C-s" 'swiper)
(global-set-key (kbd "C-c C-r") 'ivy-resume)
(global-set-key (kbd "M-x") 'counsel-M-x)
(global-set-key (kbd "C-x C-f") 'counsel-find-file)

(provide 'init-keybindings)
