;------------------------;
;;; Python Programming ;;;
;------------------------;

; Set PYTHONPATH, because we don't load .bashrc
(defun set-python-path-from-shell-PYTHONPATH ()
  (let ((path-from-shell (shell-command-to-string "$SHELL -i -c 'echo $PYTHONPATH'")))
    (setenv "PYTHONPATH" path-from-shell)))

(set-python-path-from-shell-PYTHONPATH)

(setq py-install-directory "~/.emacs.d/python-mode-6.1.3")
(add-to-list 'load-path py-install-directory)
(require 'python-mode)

; keybindings
(eval-after-load 'python
  '(define-key python-mode-map (kbd "C-c !") 'python-shell-switch-to-shell))
(eval-after-load 'python
  '(define-key python-mode-map (kbd "C-c |") 'python-shell-send-region))
  
(provide 'python-settings)
