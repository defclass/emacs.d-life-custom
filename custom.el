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
 :root-dir (expand-file-name "technology/tools" org-roam-topic-dir)
 :org-roam-type t
 :template "default-org"
 :prompt "输入工具主题: ")

(org-topic-register
 :prefix "hacklog"
 :root-dir (expand-file-name "technology/hacklog" org-roam-topic-dir)
 :template "default-org"
 :org-roam-type t
 :prompt "输入探索主题: ")

(org-topic-register
 :prefix "journal"
 :root-dir (expand-file-name "journal" org-roam-topic-dir)
 :date t
 :title-enabled nil
 :org-roam-type t
 :title-prefix "Journal"
 :template "default-life-daily"
 :prompt "选择或输入日期: ")

(defun daily (&optional arg)
  (interactive "P")
  (let ((today (format-time-string "%Y-%m-%d")))
    (journal/open-theme today)))

(org-topic-register
 :prefix "project"
 :root-dir (expand-file-name "project" org-roam-topic-dir)
 :date t
 :org-roam-type t
 :title-enabled t
 :title-prefix "project"
 :template "default-org"
 :prompt "选择或输入项目名: ")


(org-topic-register
 :prefix "reading"
 :root-dir (expand-file-name "Reading" org-roam-topic-dir)
 :org-roam-type t
 :title-enabled t
 :title-prefix "Reading"
 :template "default-org"
 :prompt "输入书名: ")


(require 'init-blog)
