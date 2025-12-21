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

(org-topic-register
 :prefix "talent"
 :root-dir (expand-file-name "talent" org-roam-topic-dir)
 :org-roam-type t
 :title-enabled t
 :title-prefix "talent"
 :template "default-org"
 :prompt "输入名人（记录名言）: ")

(org-topic-register
 :prefix "event"
 :root-dir (expand-file-name "event" org-roam-topic-dir)
 :org-roam-type t
 :title-enabled t
 :title-prefix "event"
 :template "default-org"
 :prompt "输入事件名: ")

;;;; 对认识的人进行评价

(org-topic-register
 :prefix "person"
 :root-dir (expand-file-name "person" org-roam-topic-dir)
 :org-roam-type t
 :title-enabled t
 :title-prefix "person"
 :template "default-person"
 :prompt "输入人名: ")

(org-topic-register
 :prefix "online-users"
 :root-dir (expand-file-name "online-users" org-roam-topic-dir)
 :org-roam-type t
 :title-enabled t
 :title-prefix "online-users"
 :template "default-person"
 :prompt "输入人名或ID: ")

;;;; GPS

(org-topic-register
 :prefix "n2-gps"
 :root-dir (expand-file-name "gps/n2" org-roam-topic-dir)
 :org-roam-type nil
 :date t
 :title-enabled nil
 :title-prefix "GPS-N2"
 :template "default-gps")


(require 'init-blog)
