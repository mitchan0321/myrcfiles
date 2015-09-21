(load "term/bobcat")

;;; scroll steps
(setq scroll-step 0)

;;; default major mode
(setq default-major-mode 'text-mode)
(setq default-mode-hook
      '(lambda () (auto-fill-mode 1)))

;;; misc
(setq visible-bell t)
(setq version-control t)
(setq kept-new-versions 1)
(setq kept-old-versions 0)
(setq auto-save-default t)
(setq auto-save-interval 1000)

(global-set-key "\C-h"     'delete-backward-char)
(global-set-key "\C-Z"       'scroll-down)
(global-set-key "\eh"        'help-for-help)
(global-set-key "\e "        'set-mark-command)
(global-set-key "\C-t"       'execute-extended-command)
(global-set-key "\C-xj"   'goto-line)
(defun toggle-truncate-lines()
  "Toggle truncate line mode."
  (interactive)
  (setq truncate-lines (not truncate-lines))
  (recenter)
  (message "Now change truncate mode to %s." (if truncate-lines
					       "on"
					       "off")))
(global-set-key "\et" 'toggle-truncate-lines)

;;; for Time
(setq display-time-day-and-date t)
(display-time)

;;; for C mode
;;(setq c-default-style "k&r")
;;(setq c-auto-newline nil)
;;(setq c-tab-always-indent nil)
;;(setq c-indent-level 4)
;;(setq c-continued-statement-offset 0)
;;(setq c-brace-offset 0)
;;(setq c-brace-imaginary-offset 0)
;;(setq c-argdecl-indent 0)
;;(setq c-label-offset -4)
(add-hook 'c-mode-common-hook
 '(lambda()
 (c-set-style "bsd")
 (setq c-basic-offset 4)
 (setq c-auto-newline nil)
 (setq c-tab-always-indent nil)
 (setq c-indent-level 4)
 (setq c-continued-statement-offset 0)
 (setq c-brace-offset 0)
 (setq c-brace-imaginary-offset 0)
 (setq c-argdecl-indent 0)
 (setq c-label-offset -4)
 ))
(add-hook 'cc-mode-common-hook
 '(lambda()
 (c-set-style "bsd")
 (setq c-basic-offset 4)
 (setq c-auto-newline nil)
 (setq c-tab-always-indent nil)
 (setq c-indent-level 4)
 (setq c-continued-statement-offset 0)
 (setq c-brace-offset 0)
 (setq c-brace-imaginary-offset 0)
 (setq c-argdecl-indent 0)
 (setq c-label-offset -4)
 ))
(setq auto-mode-alist
      (append '(("\\.toy$" . c-mode))
	      auto-mode-alist))
(setq auto-mode-alist
      (append '(("\\.c$" . c-mode))
	      auto-mode-alist))

(put 'eval-expression 'disabled nil)

(defun top-of-line()
  "Move current curser position go to window top line."
  (interactive)
  (recenter 0))
(global-set-key "\eq" 'top-of-line)

(setq auto-mode-alist
      (append '(("\\.st$" . smalltalk-mode))
	      auto-mode-alist))

(setq auto-mode-alist
      (append '(("\\.py$" . python-mode))
	      auto-mode-alist))

(setq auto-mode-alist
      (append '(("\\.java$" . java-mode))
	      auto-mode-alist))

(setq auto-mode-alist
      (append '(("\\.prfm$" . java-mode))
	      auto-mode-alist))

(set-language-environment "Japanese")
(prefer-coding-system 'euc-jp)
;;(setq default-input-method "japanese-anthy")
;;(global-set-key [\C-\ ] 'toggle-input-method)

;;(setq auto-mode-alist
;;      (append '(("\\.tcl$" . tcl-mode))
;;	      auto-mode-alist))
;;(setq auto-mode-alist
;;      (append '(("\\.base$" . tcl-mode))
;;	      auto-mode-alist))
;;(setq auto-mode-alist
;;      (append '(("\\.in$" . tcl-mode))
;;	      auto-mode-alist))
;;(autoload 'tcl-mode "tcl-mode.elc" "" t)

;;  Xcal Mode
(autoload 'xcal "~/lisp/xcal-19"
  "xcal for emacs." t)
(autoload 'day-of-week "~/lisp/cal")
(autoload 'calendar-month "~/lisp/cal")
(autoload 'generate-month "~/lisp/cal")
(setq xcal-map-hook
      '(lambda ()
	 (define-key xcal-map "\C-b" 'xcal-before)
	 (define-key xcal-map "<"    'xcal-before)
	 (define-key xcal-map "h"    'xcal-before)
	 (define-key xcal-map "H"    'xcal-before)
	 (define-key xcal-map ">"    'xcal-next)
	 (define-key xcal-map "\C-f" 'xcal-next)
	 (define-key xcal-map "l"    'recenter)
	 (define-key xcal-map "L"    'xcal-next)
	 (define-key xcal-map "."    'xcal-1)
	 (define-key xcal-map "e"    'xcal-edit-for-xcal)
	 (define-key xcal-map "d"    'xcal-delete-file)
	 (define-key xcal-map "q"    'xcal-quit)
	 (define-key xcal-map "p"     'xcal-previous-day)
	 (define-key xcal-map "\C-p"     'xcal-previous-day)
	 (define-key xcal-map "k"     'xcal-previous-day)
	 (define-key xcal-map "n"     'xcal-next-day)
	 (define-key xcal-map "\C-n"     'xcal-next-day)
	 (define-key xcal-map "\C-m"  'xcal-next-day)
	 (define-key xcal-map "j"     'xcal-next-day)
	 (define-key xcal-map "P"     'xcal-previous-schedule)
	 (define-key xcal-map "\C-p"  'xcal-previous-schedule)
	 (define-key xcal-map "N"     'xcal-next-schedule)
	 (define-key xcal-map "\C-n"  'xcal-next-schedule)
	 (define-key xcal-map "\C-v"  'xcal-scroll-up)
	 (define-key xcal-map " "     'xcal-scroll-up)
	 (define-key xcal-map "\C-z"  'xcal-scroll-down)
	 (define-key xcal-map "\C-?"  'xcal-scroll-down)
	 (define-key xcal-map "b"     'xcal-scroll-down)
	 (define-key xcal-map "\C-j"  'xcal-jump)
	 (define-key xcal-map "t"     'xcal-toggle-disp-holiday)
	 (define-key xcal-map "T"     'xcal-toggle-disp-holiday)
	 (define-key xcal-map "s"     'xcal-toggle-show-calendar)
	 (define-key xcal-map "S"     'xcal-toggle-show-calendar)
	 (define-key xcal-map "J"     'xcal-jump)))

(line-number-mode 1)
(setq kill-whole-line nil)

(autoload 'trr "/usr/local/lib/trr/trr" nil t)

(put 'downcase-region 'disabled nil)

(put 'upcase-region 'disabled nil)

(setq next-line-add-newlines nil)

(setq mew-fcc "+Sent")

(autoload 'jman "i18n-man-ja" nil t)
(autoload 'eman "i18n-man-en" nil t)
(setq mew-use-overlay-keymap nil)


(defvar c-file-style "bsd")

;;(create-fontset-from-fontset-spec
;; "-misc-fixed-medium-r-normal-*-14-*-*-*-c-*-fontset-14,
;;  ascii:a14,
;;  japanese-jisx0208:k14,
;;  katakana-jisx0201:r14"
;; nil t)

(if window-system (progn

  ;; Ê¸»ú¤Î¿§¤òÀßÄê¤·¤Þ¤¹¡£
  (add-to-list 'default-frame-alist '(foreground-color . "white"))
  ;; ÇØ·Ê¿§¤òÀßÄê¤·¤Þ¤¹¡£
  (add-to-list 'default-frame-alist '(background-color . "DarkSlateGray"))
  ;; ¥«¡¼¥½¥ë¤Î¿§¤òÀßÄê¤·¤Þ¤¹¡£
  (add-to-list 'default-frame-alist '(cursor-color . "SlateBlue2"))
  ;; ¥Þ¥¦¥¹¥Ý¥¤¥ó¥¿¤Î¿§¤òÀßÄê¤·¤Þ¤¹¡£
  (add-to-list 'default-frame-alist '(mouse-color . "SlateBlue2"))
  ;; ¥â¡¼¥É¥é¥¤¥ó¤ÎÊ¸»ú¤Î¿§¤òÀßÄê¤·¤Þ¤¹¡£
;;  (set-face-foreground 'modeline "white")
  ;; ¥â¡¼¥É¥é¥¤¥ó¤ÎÇØ·Ê¿§¤òÀßÄê¤·¤Þ¤¹¡£
;;  (set-face-background 'modeline "MediumPurple2")
  ;; ÁªÂòÃæ¤Î¥ê¡¼¥¸¥ç¥ó¤Î¿§¤òÀßÄê¤·¤Þ¤¹¡£
  (set-face-background 'region "LightSteelBlue1")
  ;; ¥â¡¼¥É¥é¥¤¥ó¡Ê¥¢¥¯¥Æ¥£¥Ö¤Ç¤Ê¤¤¥Ð¥Ã¥Õ¥¡¡Ë¤ÎÊ¸»ú¿§¤òÀßÄê¤·¤Þ¤¹¡£
  (set-face-foreground 'mode-line-inactive "gray30")
  ;; ¥â¡¼¥É¥é¥¤¥ó¡Ê¥¢¥¯¥Æ¥£¥Ö¤Ç¤Ê¤¤¥Ð¥Ã¥Õ¥¡¡Ë¤ÎÇØ·Ê¿§¤òÀßÄê¤·¤Þ¤¹¡£
  (set-face-background 'mode-line-inactive "gray85")

))
(if (not window-system) (progn

  (add-to-list 'default-frame-alist '(background-color . "black"))
))

;;; file loads
(load "term/bobcat")

;;; scroll steps
(setq scroll-step 0)

;;; default major mode
(setq default-major-mode 'text-mode)
(setq default-mode-hook
      '(lambda () (auto-fill-mode 1)))

;;; misc
(setq visible-bell t)
(setq version-control t)
(setq kept-new-versions 1)
(setq kept-old-versions 0)
(setq auto-save-default t)
(setq auto-save-interval 1000)

(global-set-key "\C-h"     'delete-backward-char)
(global-set-key "\C-Z"       'scroll-down)
(global-set-key "\eh"        'help-for-help)
(global-set-key "\e "        'set-mark-command)
(global-set-key "\C-t"       'execute-extended-command)
(global-set-key "\C-xj"   'goto-line)
(defun toggle-truncate-lines()
  "Toggle truncate line mode."
  (interactive)
  (setq truncate-lines (not truncate-lines))
  (recenter)
  (message "Now change truncate mode to %s." (if truncate-lines
					       "on"
					       "off")))
(global-set-key "\et" 'toggle-truncate-lines)

;;; for Time
(setq display-time-day-and-date t)
(display-time)

(put 'eval-expression 'disabled nil)

(defun top-of-line()
  "Move current curser position go to window top line."
  (interactive)
  (recenter 0))
(global-set-key "\eq" 'top-of-line)

(setq auto-mode-alist
      (append '(("\\.st$" . smalltalk-mode))
	      auto-mode-alist))

(setq auto-mode-alist
      (append '(("\\.py$" . python-mode))
	      auto-mode-alist))

(setq auto-mode-alist
      (append '(("\\.java$" . java-mode))
	      auto-mode-alist))
(tool-bar-mode 0)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(current-language-environment "UTF-8")
 '(display-time-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :background "DarkSlateGray" :foreground "white" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 113 :width normal :foundry "unknown" :family "DejaVu Sans Mono")))))
