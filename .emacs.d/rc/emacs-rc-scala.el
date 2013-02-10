(require 'scala-mode-auto)
(add-to-list 'load-path "/usr/share/ensime/elisp") 
(require 'ensime)
(add-hook 'scala-mode-hook 'ensime-scala-mode-hook)
