;; .emacs

;; Uncomment this line to disable loading of "default.el" at startup
;; (setq inhibit-default-init t)

;; Highlight region when between mark and point
(custom-set-variables
 '(global-font-lock-mode t nil (font-lock))
 '(perl-continued-brace-offset -8)
 '(perl-continued-statement-offset 8)
 '(perl-indent-level 8)
 '(show-paren-mode t nil (paren)) '(transient-mark-mode t))

;; Disable save files
(setq make-backup-files nil)
(setq auto-save-list-file-name nil)
(setq auto-save-default nil)

;; Turn on font-lock mode
(when (fboundp 'global-font-lock-mode)
  (global-font-lock-mode t))

;; Enable visual feedback on selections
;;(setq transient-mark-mode t)

;; Default to better frame titles
(setq frame-title-format
      (concat  "%b - emacs@" system-name))

;; Add goto-line functionality
(global-set-key "\C-x\C-j" 'goto-line)

;; Set tab width
(setq default-tab-width 8)
