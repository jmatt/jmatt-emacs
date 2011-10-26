;; Load and configure SLIME
;; (require 'slime)
;; (require 'slime-fuzzy)
;; (require 'slime-repl)
;; ;;(eval-after-load 'slime '(setq slime-protocol-version 'ignore))
;; ;;(slime-setup '(slime-repl slime-fuzzy))
;;  (eval-after-load "slime"
;;    '(progn
;; ;;    ;; "Extra" features (contrib)
;;       ;;                                         ;
;;       (slime-setup 
;;        ;;       ;;
;;        '(slime-repl slime-fuzzy)) ;; slime-highlight-edits
;;       (setq 
;;        ;; Use UTF-8 coding
;;        slime-net-coding-system 'utf-8-unix)
;;        ;; Use fuzzy completion (M-Tab)
;; ;;        ;; slime-complete-symbol-function 'slime-fuzzy-complete-symbol)
;; ;;        ;; Use parentheses editting mode paredit
;; ;;       (defun paredit-mode-enable () (paredit-mode 1))
;; ;;       (add-hook 'slime-mode-hook 'paredit-mode-enable)
;;       ;;       (add-hook 'slime-repl-mode-hook 'paredit-mode-enable))
;;       ))

;; ;; ;; clojure
;; ;; (require 'clojure-mode)
;; ;; (require 'clojure-test-mode)
;; ;; (add-hook 'slime-repl-mode-hook 'clojure-mode-font-lock-setup)
;; ;; (eval-after-load 'find-file-in-project
;; ;;  '(add-to-list 'ffip-patterns "*.clj"))
;; (setq slime-net-coding-system 'utf-8-unix)


;; textmate-mode
;; (require 'textmate)
;; (textmate-mode)

;; ;; markdown-mode
;; (autoload 'markdown-mode "markdown-mode.el"
;;    "Major mode for editing Markdown files" t)

;; (setq auto-mode-alist (cons '("\\.markdown" . markdown-mode) auto-mode-alist))
;; (setq auto-mode-alist (cons '("\\.md" . markdown-mode) auto-mode-alist))

;; require or autoload paredit-mode
(defun turn-on-paredit () (paredit-mode 1))
(add-hook 'clojure-mode-hook 'turn-on-paredit)

(provide 'dev)
