;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Start of xbindkeys guile configuration ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; This configuration is guile based.
;;   http://www.gnu.org/software/guile/guile.html

;; XF86AudioMute
(xbindkey '("m:0x0" "c:121") "amixer set Master toggle")

;; XF86AudioLowerVolume
(xbindkey '("m:0x0" "c:122") "amixer set Master 5%- unmute")

;; XF86AudioRaiseVolume
(xbindkey '("m:0x0" "c:123") "amixer set Master 5%+ unmute")

;; XF86AudioPrev
(xbindkey '("m:0x0" "c:173") "mpc prev")

;; XF86AudioPlay
(xbindkey '("m:0x0" "c:172") "mpc pause")

;; XF86AudioNext
(xbindkey '("m:0x0" "c:171") "mpc next")



