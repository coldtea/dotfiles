;; -------------------------------------------------------------------
;; Find files with recentf and i-do
;; -------------------------------------------------------------------

(require 'recentf)
(global-set-key (kbd "C-x C-r") 'ido-recentf)
 
(recentf-mode t)
(setq recentf-max-saved-items 50)

(defun ido-recentf ()
  "Use ido to select a recently opened file from the `recentf-list'"
  (interactive)
  (let ((home (expand-file-name (getenv "HOME"))))
    (find-file (ido-completing-read "Recentf open: "
                          (mapcar
                           (lambda (path) (replace-regexp-in-string home "~" path))
                           recentf-list)
                          nil t))))
