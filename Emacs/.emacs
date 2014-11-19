;; path where settings files are kept
(add-to-list 'load-path "~/.emacs.d/settings")

;; configure general settings
(require 'general-settings)

;; define various custom functions
;(require 'custom-functions)

;; configure color
;(require 'color-theme-settings)

;---------------;
;;; Utilities ;;;
;---------------;

;; Auto complete
(require 'auto-complete-settings)

;-----------;
;;; Modes ;;;
;-----------;

;; Ido mode
(require 'ido)
(ido-mode 1)

;; Python mode
(require 'python-settings)

;---------------------------------------------------------------------
;; Put auto 'custom' changes in a separate file (this is stuff like
;; custom-set-faces and custom-set-variables)
;(load
;(setq custom-file (expand-file-name "settings/custom.el" user-emacs-directory)) 'noerror)

