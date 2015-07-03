;; ************************************************************************ ;;
;;                    General, Global or MyOWN Settings                     ;;
;; ************************************************************************ ;;

;; Language
(setq current-language-environment "English")

;; Don't show the startup screen
(setq inhibit-startup-screen 1)

;; Don't show the menu bar
(menu-bar-mode 0)

;; Don't show the tool bar
(require 'tool-bar)
(tool-bar-mode 0)

;; Don't show the scroll bar
(if window-system (scroll-bar-mode 0))

;; Disable backup
(setq backup-inhibited t)

;; Disable auto save
(setq auto-save-default nil)

;; Number of characters until the fill column
(setq-default fill-column 70)

;; Each line of text gets one line on the screen (i.e., text will run
;; Off the left instead of wrapping around onto a new line)
(setq-default truncate-lines 1)

;; Truncate lines even in partial-width windows
(setq truncate-partial-width-windows 1)

;; (split-window-right) ;; Split window
(setq frame-title-format  '("emacs - " (buffer-file-name "%f"  (dired-directory dired-directory "%b")))) ;; Window Title
(savehist-mode 1) ;; No history to lose
(global-hl-line-mode +1) ;; HighLight mode

;; Smooth scroll
(setq scroll-step 3)

;; Clock
(display-time)

;; (setq visible-bell 1)
(setq ring-bell-function 'ignore)

;; Make whitespace-mode use just basic coloring
(setq whitespace-style (quote (spaces tabs newline space-mark tab-mark newline-mark)))

;; Offset and TAB setup
(setq-default c-basic-offset 4 c-default-style "linux")
(setq-default tab-width 4 indent-tabs-mode t)

;;(global-linum-mode t)

;; GitHub Flavored Markdown
(add-to-list 'auto-mode-alist '("README\\.md\\'" . gfm-mode))


;; ************************************************************************
;;     ReMap my KEYs below
;; ************************************************************************

;; White space mode
(define-key global-map (kbd "<f8>") 'whitespace-mode)
(setq whitespace-display-mappings '((space-mark 32 [183] [46])(newline-mark 10 [182 10])))

;; Fix iedit bug in Mac
(define-key global-map (kbd "C-c ;") 'iedit-mode)

;; Call magit
(define-key global-map (kbd "C-x G") 'magit-status)

;; Disable annoying Yes or No
(fset 'yes-or-no-p 'y-or-n-p)

;; Neo TREE
(define-key global-map (kbd "<f12>") 'neotree)

; Setup my find-files
(define-key global-map "\ef" 'find-file)
(define-key global-map "\eF" 'find-file-other-window)

(global-set-key (read-kbd-macro "\eb")  'ido-switch-buffer)
(global-set-key (read-kbd-macro "\eB")  'ido-switch-buffer-other-window)
 
(define-key global-map "\ew" 'other-window) ;

;; Comment region
(global-unset-key (kbd "M-;"))
(global-set-key (kbd "M-;") 'comment-region)

(global-unset-key (kbd "C-;"))
(global-set-key (kbd "C-;") 'uncomment-region)

(define-key global-map [C-right] 'forward-word)
(define-key global-map [C-left] 'backward-word)
(define-key global-map [C-up] 'previous-blank-line)
(define-key global-map [C-down] 'next-blank-line)
(define-key global-map [home] 'beginning-of-line)
(define-key global-map [end] 'end-of-line)
(define-key global-map [pgup] 'forward-page)
(define-key global-map [pgdown] 'backward-page)

(define-key global-map "\e " 'set-mark-command)
(define-key global-map "\eq" 'append-as-kill)
(define-key global-map "\ea" 'yank)
(define-key global-map "\ez" 'kill-region)
(define-key global-map [M-up] 'previous-blank-line)
(define-key global-map [M-down] 'next-blank-line)
(define-key global-map [M-right] 'forward-word)
(define-key global-map [M-left] 'backward-word)

(define-key global-map "\e:" 'exchange-point-and-mark)

(define-key global-map "\en" 'next-error)
(define-key global-map "\eN" 'previous-error)

(define-key global-map "\eg" 'goto-line)
(define-key global-map "\ej" 'imenu)

;; Editting
(define-key global-map "" 'copy-region-as-kill) ;
(define-key global-map "" 'yank)
(define-key global-map "" 'nil)
(define-key global-map "" 'rotate-yank-pointer)
(define-key global-map "\eu" 'undo)
(define-key global-map "\e6" 'upcase-word)
(define-key global-map "\e." 'fill-paragraph)

;;(define-key global-map "\el" 'dimi-replace-in-region) ;

(define-key global-map "\eo" 'query-replace)
;;(define-key global-map "\eO" 'dimi-replace-string)

;; \377 is alt-backspace
(define-key global-map "\377" 'backward-kill-word)
(define-key global-map [M-delete] 'kill-word)

;;(define-key global-map "\e[" 'start-kbd-macro)
;;(define-key global-map "\e]" 'end-kbd-macro)
;;(define-key global-map "\e'" 'call-last-kbd-macro)

;; Buffers
(define-key global-map "\er" 'revert-buffer)
(define-key global-map "\ek" 'kill-this-buffer)
(define-key global-map "\es" 'save-buffer)

(define-key global-map "\t" 'dabbrev-expand)
(define-key global-map [S-tab] 'indent-for-tab-command)
(define-key global-map [backtab] 'indent-for-tab-command)
(define-key global-map "\C-y" 'indent-for-tab-command)
(define-key global-map [C-tab] 'indent-region)
(define-key global-map "	" 'indent-region)

(put 'erase-buffer 'disabled nil)

(add-to-list 'default-frame-alist '(font . "Liberation Mono-11.5"))
(set-face-attribute 'default t :font "Liberation Mono-11.5")
;; Playing with colors
;; (set-face-attribute 'font-lock-builtin-face nil :foreground "#DAB98F")
(set-face-attribute 'font-lock-builtin-face nil :foreground "#af8700")
(set-face-attribute 'font-lock-comment-face nil :foreground "gray60")
(set-face-attribute 'font-lock-constant-face nil :foreground "olive drab")
(set-face-attribute 'font-lock-doc-face nil :foreground "gray50")
(set-face-attribute 'font-lock-function-name-face nil :foreground "burlywood3")
(set-face-attribute 'font-lock-keyword-face nil :foreground "DarkGoldenrod3")
(set-face-attribute 'font-lock-string-face nil :foreground "olive drab")
(set-face-attribute 'font-lock-type-face nil :foreground "burlywood3")
(set-face-attribute 'font-lock-variable-name-face nil :foreground "burlywood3")

(defun post-load-stuff ()
  (interactive)
  (set-foreground-color "burlywood3")
  (set-background-color "#161616")
  (set-cursor-color "#40FF40")
)

(add-hook 'window-setup-hook 'post-load-stuff t)


(provide 'general-settings)
