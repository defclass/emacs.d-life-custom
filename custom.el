;;; -*- lexical-binding: t -*-
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(flyspell-duplicate ((t (:underline (:color "yellow" :style wave)))))
 '(flyspell-incorrect ((t (:underline (:color "red" :style wave))))))

(org-topic-register
 :prefix "tools"
 :root-dir (expand-file-name "technology/tools" org-note-dir)
 :template "default-org"
 :prompt "输入工具主题: ")

(org-topic-register
 :prefix "hacklog"
 :root-dir (expand-file-name "technology/hacklog" org-note-dir)
 :template "default-org"
 :prompt "输入探索主题: ")

(org-topic-register
 :prefix "journal"
 :root-dir (expand-file-name "daily" org-note-dir)
 :date t
 :title-enabled nil
 :title-prefix "Journal"
 :template "default-life-daily"
 :prompt "选择或输入日期: ")

(org-topic-register
 :prefix "project"
 :root-dir (expand-file-name "project" org-note-dir)
 :date t
 :title-enabled t
 :title-prefix "project"
 :template "default-org"
 :prompt "选择或输入项目名: ")

(defun daily (&optional arg)
  (interactive "P")
  (let ((today (format-time-string "%Y-%m-%d")))
    (journal/open-theme today)))

(require 'init-blog)
