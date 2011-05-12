;; Load and configure SLIME
(require 'slime)
(eval-after-load 'slime '(setq slime-protocol-version 'ignore))
(slime-setup '(slime-repl))
(eval-after-load "slime"
  '(progn
     ;; "Extra" features (contrib)
     (slime-setup 
      '(slime-repl slime-banner slime-fuzzy)) ;; slime-highlight-edits
     (setq 
      ;; Use UTF-8 coding
      slime-net-coding-system 'utf-8-unix
      ;; Use fuzzy completion (M-Tab)
      slime-complete-symbol-function 'slime-fuzzy-complete-symbol)
     ;; Use parentheses editting mode paredit
     (defun paredit-mode-enable () (paredit-mode 1))
     (add-hook 'slime-mode-hook 'paredit-mode-enable)
     (add-hook 'slime-repl-mode-hook 'paredit-mode-enable)))

;; clojure
(require 'clojure-mode)
(require 'clojure-test-mode)
(add-hook 'slime-repl-mode-hook 'clojure-mode-font-lock-setup)
(eval-after-load 'find-file-in-project
  '(add-to-list 'ffip-patterns "*.clj"))


;; textmate-mode
(require 'textmate)
(textmate-mode)

(provide 'dev)
