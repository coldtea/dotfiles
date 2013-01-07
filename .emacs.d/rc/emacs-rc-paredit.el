;; ----------------------------------------------------------------------
;; paredit
;; ----------------------------------------------------------------------

(autoload 'paredit-mode "paredit"
  "Minor mode for pseudo-structurally editing Lisp code." t)

(dolist (hook '(clojure-mode-hook
                emacs-lisp-mode-hook
                lisp-mode-hook
                lisp-interaction-mode-hook
                scheme-mode-hook
                slime-repl-mode-hook
                nrepl-mode-hook))
  (add-hook hook (lambda () (paredit-mode 1))))
