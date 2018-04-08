(package-initialize)

(add-to-list 'load-path "~/.emacs.d/config-files/")

(require 'init-packages)
(require 'init-ui)
(require 'init-keybindings)
(require 'init-better-default)
(require 'init-cpp)


(setq custom-file (expand-file-name "config-files/custom.el" user-emacs-directory))
(load-file custom-file)
