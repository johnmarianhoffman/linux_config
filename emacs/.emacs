(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(inhibit-startup-screen t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; Load any external packages
(add-to-list 'load-path "~/.elisp")

(require 'buffer-move)

;; keybindings for buffer move
(global-set-key (kbd "<C-S-up>")     'buf-move-up)
(global-set-key (kbd "<C-S-down>")   'buf-move-down)
(global-set-key (kbd "<C-S-left>")   'buf-move-left)
(global-set-key (kbd "<C-S-right>")  'buf-move-right)

;; Default to toggle-truncate-lines in C-mode C++-mode and for makefiles
(add-hook 'c-mode-hook (lambda () (setq truncate-lines t)))
(add-hook 'c++-mode-hook (lambda () (setq truncate-lines t)))
(add-hook 'makefile-mode-hook (lambda () (setq truncate-lines t)))

;;(set-default 'truncate-lines t)

;; Turn on line numbering
(add-to-list 'auto-mode-alist '("\\.cl\\'" . c-mode))
(setq-default c-basic-offset 4)

(global-linum-mode t)

;; Automatically move cursor to new frame when created

(defadvice split-window (after move-point-to-new-window activate)
  "Moves the cursor to newly created window"
  (other-window 1))

;; Bind C-x / to string-insert-rectangle
(global-set-key (kbd "C-x /") 'string-insert-rectangle)

;; Bind C-c f to buffer switch ( I just can't get used to C-x b
;; for some reason and never use the auto fill stuff)
(global-set-key (kbd "C-x f") 'switch-to-buffer)

;; Bind C-j to RET in C-mode
(define-key global-map (kbd "RET") 'newline-and-indent)

;; Set easier window resize commands
(global-set-key (kbd "M-S-<down>") 'enlarge-window)
(global-set-key (kbd "M-S-<up>") 'shrink-window)
(global-set-key (kbd "M-S-<left>") 'enlarge-window-horizontally)
(global-set-key (kbd "M-S-<right>") 'shrink-window-horizontally)



