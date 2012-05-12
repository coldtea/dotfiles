(set-language-environment "UTF-8")

;; ----------------------------------------------------------------------
;; set color theme
;; ----------------------------------------------------------------------
;;(add-to-list 'load-path "/home/sober/.emacs.d/elpa/color-theme-6.6.0")
;;(require 'color-theme)
;;(color-theme-charcoal-black)

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
;; start eshel
;; ----------------------------------------------------------------------
(eshell)

