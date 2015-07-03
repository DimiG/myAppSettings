;; ************************************************************************ ;;
;;                        Main Configuration File                           ;;
;;                                                                          ;;
;; ************************************************************************ ;;
;;             Don't forget about separated configuration files             ;;
;;                    in ~/.emacs.d/settings folder                         ;;
;; ************************************************************************ ;;
;;              Created by (c) 2015 DimiG <dimi615@pisem.net>               ;;

;; Path where settings files are kept
(add-to-list 'load-path "~/.emacs.d/settings")

;; Configure general settings
(require 'general-settings)

;; Define various custom functions
(require 'custom-functions)

;; Start package.el with emacs
(require 'package)

;; Initialize package.el
(package-initialize)

;; ************************************************************************ ;;
;;                               Utilities                                  ;;
;; ************************************************************************ ;;

;; Auto complete
(require 'auto-complete)

;; Do default config for auto-complete
(require 'auto-complete-config)
(ac-config-default)

;; Start yasnippet with emacs
(require 'yasnippet)
(yas-global-mode 1)

;; Tramp
(require 'tramp)
(setq tramp-default-method "ssh")

;; Git
(require 'magit)
(setq magit-last-seen-setup-instructions "1.4.0")

;; ************************************************************************ ;;
;;                                 Modes                                    ;;
;; ************************************************************************ ;;

;; Ido mode
(require 'ido)
(ido-mode t)

;; Shell Mode
(require 'ansi-color)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

;; cc-mode
(require 'cc-mode)

;; compile
(require 'compile)

;; C mode base map
(define-key c-mode-base-map (kbd "RET") 'newline-and-indent)

;; ************************************************************************
;; Put auto 'custom' changes in a separate file (this is stuff like
;; custom-set-faces and custom-set-variables)
(load
 (setq custom-file (expand-file-name "settings/custom.el" user-emacs-directory))
 'noerror)
