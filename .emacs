(set-language-environment "UTF-8")

;; ----------------------------------------------------------------------
;; set color theme
;; ----------------------------------------------------------------------
(if window-system
  (require 'color-theme))

(eval-after-load "color-theme"
  '(progn
    (color-theme-initialize)
    (color-theme-montz)))

;; ----------------------------------------------------------------------
;; ido-mode for buffer selection
;; ----------------------------------------------------------------------
(ido-mode t)

;; ----------------------------------------------------------------------
;; Package management
;; ----------------------------------------------------------------------
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/"))
(package-initialize)
(when (null package-archive-contents)
  (package-refresh-contents))

;; ----------------------------------------------------------------------
;; whitespace mode
;; ----------------------------------------------------------------------
(require 'whitespace)
(setq whitespace-style '(trailing tabs tab-mark
                                  indentation
                                  space-before-tab
                                  space-after-tab))

;; ----------------------------------------------------------------------
;; configure tab behaviour
;; ----------------------------------------------------------------------
;;(global-set-key "\C-i" 'self-insert-command)
;;(setq indent-line-function 'insert-tab)
(setq tab-width 4)
(setq default-tab-width 4)
;;(setq tab-stop-list '(4 8 12 16 20 24 28 32 36 40 44 48 52 56 60 64 68 72 76 80))
(setq indent-tabs-mode nil)

;; ----------------------------------------------------------------------
;; Scala
;; ----------------------------------------------------------------------
(require 'scala-mode-auto)
(add-to-list 'load-path "/usr/share/ensime/elisp") 
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)

;; ----------------------------------------------------------------------
;; Clojure
;; ----------------------------------------------------------------------

;; Wrap this in a function!
(when (not (package-installed-p 'nrepl))
  (package-install 'nrepl))

(when (not (package-installed-p 'clojure-mode))
  (package-install 'clojure-mode))

(defun turn-on-paredit () (paredit-mode 1))
(add-hook 'clojure-mode-hook 'turn-on-paredit)

;; ----------------------------------------------------------------------
;; Lisp
;; ----------------------------------------------------------------------
;; (setq inferior-lisp-program "/usr/bin/sbcl")
;; (require 'slime)
;; (add-hook 'slime-mode-hook)
;; (slime-setup)
