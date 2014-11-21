;; sxv emacs init.el


;;;; get packages
(require 'package)
(package-initialize)
(setq package-archives '(("gnu" . "http://elpa.gnu.org/packages/")
                         ("marmalade" . "https://marmalade-repo.org/packages/")
                         ("melpa" . "http://melpa.milkbox.net/packages/")))
;;


;;;; environment
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(add-to-list 'load-path "~/.emacs.d/themes")
(load-theme 'evenhold t)
(global-hl-line-mode 1)
(set-face-background 'hl-line "#222")
(set-face-foreground 'highlight nil)
;;


;;;; helm
(require 'helm-config)
(setq helm-quick-update t
      helm-idle-delay 0.01
      helm-input-idle-delay 0.01)
(helm-mode 1)
(global-set-key (kbd "C-b") 'helm-buffers-list)
(global-set-key (kbd "C-f") 'helm-find-files)
(setq helm-display-function
      (lambda (buf)
        (split-window-vertically)
        (other-window 1)
        (switch-to-buffer buf)))
(projectile-global-mode)
(setq projectile-completion-system 'helm)
(helm-projectile-on)
;;


;;;; undo tree visualize
(undo-tree-mode 1)
(global-set-key (kbd "C-/") 'undo-tree-visualize)
;;


;;;; global modes
(mouse-wheel-mode t)
(show-paren-mode t)
(line-number-mode t)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(tool-bar-mode -1)
;;


;;;; other variables
(setq inhibit-startup-screen t
      initial-scratch-message ";; *scratch*\n\n"
      backup-inhibited t
      debug-on-error nil
      stack-trace-on-error nil
      standard-indent 4
      grep-scroll-output t
	  show-trailing-whitespace t)

(setq-default ecomment-column 42
              fill-column 40
              tab-width 4
              word-wrap t)
;;


;;;; functions
(defun backward-kill-line (arg)
  "Kill ARG lines backward."
  (interactive "p")
  (kill-line (- 1 arg)))
;;


;;;; keybindings (note: cmd -> "s" modifier on OSX)
(global-set-key (kbd "M-<up>") 'backward-paragraph)
(global-set-key (kbd "M-<down>") 'forward-paragraph)
(global-set-key (kbd "s-[") 'previous-buffer)
(global-set-key (kbd "s-]") 'next-buffer)
(global-set-key (kbd "s-<left>") 'move-beginning-of-line)
(global-set-key (kbd "s-<right>") 'move-end-of-line)
(global-set-key (kbd "s-<up>") 'beginning-of-buffer)
(global-set-key (kbd "s-<down>") 'end-of-buffer)
(global-set-key (kbd "C-s-<left>") 'windmove-left)
(global-set-key (kbd "C-s-<right>") 'windmove-right)
(global-set-key (kbd "M-1") 'windmove-left)
(global-set-key (kbd "M-2") 'windmove-right)
(global-set-key (kbd "s-<backspace>") 'backward-kill-line)
;;
