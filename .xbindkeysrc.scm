;; XF86AudioMute
(xbindkey '("m:0x0" "c:121") "amixer set Master toggle")

;; XF86AudioLowerVolume
(xbindkey '("m:0x0" "c:122") "amixer set Master 5%- unmute")

;; XF86AudioRaiseVolume
(xbindkey '("m:0x0" "c:123") "amixer set Master 5%+ unmute")

;; XF86AudioPrev
(xbindkey '("m:0x0" "c:173") "mpc prev")

;; XF86AudioPlay
(xbindkey '("m:0x0" "c:172") "mpc toggle")

;; XF86AudioNext
(xbindkey '("m:0x0" "c:171") "mpc next")

;; Lock screen
(xbindkey '("m:0x40" "c:46") "i3lock -c 000000")

;; Launch dmenu
(xbindkey '("m:0x40" "c:33") "dmenu_run")

;; Launch terminal
(xbindkey '("m:0x41" "c:36") "urxvtc")
