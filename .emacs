(set-language-environment "UTF-8")
;; ----------------------------------------------------------------------
;; Package management
;; ----------------------------------------------------------------------
(require 'package)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "http://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
(package-initialize)

(setq package-list '(dired-single
                     undo-tree
                     paredit
                     nrepl
                     clojure-mode
                     color-theme
                     cyberpunk-theme
                     starter-kit
                     magit))

(when (null package-archive-contents)
  (package-refresh-contents))

(dolist (package package-list)
  (when (not (package-installed-p package))
    (package-install package)))

;; ----------------------------------------------------------------------
;; load packages
;; ----------------------------------------------------------------------
;;(load "~/.emacs.d/rc/emacs-rc-yasnippet.el")
(load "~/.emacs.d/rc/emacs-rc-common.el")
(load "~/.emacs.d/rc/emacs-rc-dired.el")
(load "~/.emacs.d/rc/emacs-rc-paredit.el")
(load "~/.emacs.d/rc/emacs-rc-keybindings.el")
(load "~/.emacs.d/rc/emacs-rc-whitespace.el")

;; ----------------------------------------------------------------------
;; set color theme
;; ----------------------------------------------------------------------
(if window-system
  (load-theme 'cyberpunk t))

(toggle-fullscreen)

;; ido-mode for buffer selection
(ido-mode t)

;; -------------------------------------------------------------------
;; undo
;; -------------------------------------------------------------------
(require 'undo-tree)
(global-undo-tree-mode)

;; expand-region
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)
