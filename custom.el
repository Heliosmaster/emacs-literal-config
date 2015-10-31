(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("a27c00821ccfd5a78b01e4f35dc056706dd9ede09a8b90c6955ae6a390eb1c1e" "3c83b3676d796422704082049fc38b6966bcad960f896669dfc21a7a37a748fa" "4aee8551b53a43a883cb0b7f3255d6859d766b6c5e14bcb01bed572fcbef4328" "6a37be365d1d95fad2f4d185e51928c789ef7a4ccf17e7ca13ad63a8bf5b922f" default)))
 '(magit-default-tracking-name-function (quote magit-default-tracking-name-branch-only))
 '(magit-key-mode-show-usage t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(col-highlight ((t (:foreground "white"))) t)
 '(diff-added ((t (:foreground "green"))))
 '(diff-changed ((t (:foreground "yellow"))))
 '(diff-removed ((t (:inherit diff-changed :foreground "red"))))
 '(header-line ((t (:inherit mode-line :inverse-video t :underline nil :slant normal :weight normal))))
 '(highlight ((t (:background "blue" :foreground "black"))))
 '(hl-line ((t (:inherit nil :underline nil))) t)
 '(magit-branch ((t (:foreground "green"))))
 '(magit-diff-file-header ((t (:weight bold))))
 '(magit-diff-hunk-header ((t (:foreground "blue"))))
 '(magit-item-highlight ((t (:background "black"))))
 '(magit-item-mark ((t nil)))
 '(magit-log-head-label-bisect-bad ((t (:foreground "IndianRed4" :box 1))))
 '(magit-log-head-label-bisect-good ((t (:foreground "dark olive green" :box 1))))
 '(magit-log-head-label-bisect-skip ((t (:foreground "dark goldenrod" :box 1))))
 '(magit-log-head-label-default ((t (:foreground "yellow" :box 1 :weight bold))))
 '(magit-log-head-label-head ((t (:foreground "Black" :box 1))))
 '(magit-log-head-label-local ((t (:foreground "LightSkyBlue4" :box 1))))
 '(magit-log-head-label-patches ((t (:foreground "IndianRed4" :box 1))))
 '(magit-log-head-label-remote ((t (:foreground "OliveDrab4" :box 1))))
 '(magit-log-head-label-tags ((t (:foreground "goldenrod4" :box 1))))
 '(magit-log-head-label-wip ((t (:foreground "LightSkyBlue3" :box 1))))
 '(magit-log-reflog-label-amend ((t (:foreground "yellow"))))
 '(magit-log-reflog-label-checkout ((t (:foreground "LightSkyBlue4" :box 1))))
 '(magit-log-reflog-label-cherry-pick ((t (:foreground "dark olive green" :box 1))))
 '(magit-log-reflog-label-commit ((t (:foreground "goldenrod4" :box 1))))
 '(magit-log-reflog-label-merge ((t (:foreground "yellow"))))
 '(magit-log-reflog-label-other ((t (:box 1))))
 '(magit-log-reflog-label-rebase ((t (:foreground "OliveDrab4" :box 1))))
 '(magit-log-reflog-label-remote ((t (:box 1))))
 '(magit-log-reflog-label-reset ((t (:foreground "IndianRed4" :box 1))))
 '(magit-tag ((t (:foreground "goldenrod4")))))

(load-theme 'solarized-dark t)

;; disable bell function
(setq ring-bell-function 'ignore)

(require 'smart-mode-line)
(sml/setup)
(sml/apply-theme 'dark)

;; use Shift+arrow_keys to move cursor around split panes
(windmove-default-keybindings)
(define-key input-decode-map "\e[1;2A" [S-up])
(windmove-default-keybindings)
;; when cursor is on edge, move to the other side, as in a toroidal space
(setq windmove-wrap-around t)

(require 'haml-mode)

;;(global-linum-mode t)
;;(setq linum-format "%d ")


(global-set-key "\C-x2" (lambda () (interactive) (split-window-vertically) (other-window 1)))
(global-set-key "\C-x3" (lambda () (interactive) (split-window-horizontally) (other-window 1)))

(defun fixup-json ()
      "Re-indent json buffers with broken literal strings. Needs jsonpp installed (available using homebrew)"
      (interactive)
      (shell-command-on-region (point-min) (point-max) "sed -e ':a' -e 'N' -e '$!ba' -e 's/\\n/ /g'|jsonpp"  nil t))
