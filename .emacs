;; .emacs

;; Uncomment this line to disable loading of "default.el" at startup
;; (setq inhibit-default-init t)

;; Highlight region when between mark and point
(custom-set-variables
 '(global-font-lock-mode t nil (font-lock))
 '(show-paren-mode t nil (paren))
 '(transient-mark-mode t))

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

(add-to-list 'load-path "~/.emacs.d/lisp")

;; ELPA additional repositories
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/"))
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))
(package-initialize)

;; No file menu
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))

;; Enable packages at startup (for themes)
(setq package-enable-at-startup nil) (package-initialize)
