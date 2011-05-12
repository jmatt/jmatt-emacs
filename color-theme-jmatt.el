;;JMatt's Color Theme
(require 'color-theme-autoloads "color-theme-autoloads")
(require 'color-theme)
(color-theme-initialize)
(setq color-theme-is-global t)

(load-library "color-theme")
;; (color-theme-select)

(add-to-list 'load-path "~/.emacs.d/color-themes")
(if (window-system)
    (progn (require 'color-theme-dark-bliss)
           (require 'color-theme-hober2)
           (require 'zenburn)
           (require 'color-theme-solarized)
           (color-theme-solarized-dark))
  (progn
    (require 'zenburn)
    (color-theme-zenburn)
    (require 'color-theme-solarized)
    (color-theme-solarized-dark)))

(provide 'color-theme-jmatt)
