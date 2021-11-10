;;; config/org.el --- mrHedgehog's Org config -*- lexical-binding: t; -*-

;; Set todo keywords
(setq org-todo-keywords
      '((sequence "TODO" "IN-PROGRESS" "PENDING" "|" "DONE" "GRADED")))

;; Set tag list
(setq org-tag-alist
      ;; Locations list
      '((":startgroup" . nil) ("@school" . ?s) ("@personal" . ?p) ("@chipotle" . ?c) (":endgroup" . nil)
        ;; Classes list, 11th grade classes
        (":startgroup" . nil) ("11a-spanish" . nil) ("11a-history" . nil) ("11a-graphics" . nil) ("11a-photography" . nil)
        ("11b-apcsp" . nil) ("11b-physics" . nil) ("11b-stats" . nil) ("11b-english" . nil) (":endgroup" . nil)))
