(set-language-environment "UTF-8")

;; ----------------------------------------------------------------------
;; set color theme
;; ----------------------------------------------------------------------
(if window-system
  (require 'color-theme))

(eval-after-load "color-theme"
  '(progn
    (color-theme-initialize)
    (color-theme-cyberpunk)))

;; ido-mode for buffer selection
(ido-mode t)

;; ----------------------------------------------------------------------
;; Package management
;; ----------------------------------------------------------------------
(require 'package)
(add-to-list 'package-archives 
    '("marmalade" .
      "http://marmalade-repo.org/packages/"))

(package-initialize)

(setq package-list '(dired-single
                     undo-tree
                     paredit
                     nrepl
                     clojure-mode))

(when (null package-archive-contents)
  (package-refresh-contents))

(dolist (package package-list)
  (when (not (package-installed-p package))
    (package-install package)))

;; ----------------------------------------------------------------------
;; Scala
;; ----------------------------------------------------------------------
(require 'scala-mode-auto)
(add-to-list 'load-path "/usr/share/ensime/elisp") 
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;; ----------------------------------------------------------------------
;; load packages
;; ----------------------------------------------------------------------
;;(load "~/.emacs.d/rc/emacs-rc-yasnippet.el")
(load "~/.emacs.d/rc/emacs-rc-dired.el")
(load "~/.emacs.d/rc/emacs-rc-paredit.el")
(load "~/.emacs.d/rc/emacs-rc-keybindings.el")
(load "~/.emacs.d/rc/emacs-rc-whitespace.el")

;; -------------------------------------------------------------------
;; undo
;; -------------------------------------------------------------------
(require 'undo-tree)
(global-undo-tree-mode)

;; expand-region
(require 'expand-region)
(global-set-key (kbd "C-=") 'er/expand-region)
