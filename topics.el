;;; topics.el --- Private life topics  -*- lexical-binding: t; -*-

(setq my/profile-topic-definitions
      (list
       ;; ------------- Myself -----------------
       ;; 折腾的工具
       (list :prefix "tools"
	     :root-dir "technology/tools"
	     :org-roam-type t
	     :template "default-org"
	     :prompt "输入工具主题: ")

       
       ;; 折腾日记
       (list	:prefix "hacklog"
		:root-dir "technology/hacklog"
		:template "default-org"
		:org-roam-type t
		:prompt "输入探索主题: ")

       
       ;; want to memo something belongs to a project
       (list	:prefix "project"
		:root-dir "project"
		:date t
		:org-roam-type t
		:title-enabled t
		:title-prefix "project"
		:template "default-org"
		:prompt "选择或输入项目名: ") 
       
       ;; readings 
       (list	:prefix "reading"
		:root-dir "Reading"
		:org-roam-type t
		:title-enabled t
		:title-prefix "Reading"
		:template "default-org"
		:prompt "输入书名: ")



	;;;; --------- Review ----------------
       ;; person in real life
       (list	:prefix "person"
		:root-dir "person"
		:org-roam-type t
		:title-enabled t
		:title-prefix "person"
		:template "default-person"
		:prompt "输入人名: "
		:encrypted t)

       ;; famous event in real life
       (list	:prefix "event"
		:root-dir "event"
		:org-roam-type t
		:title-enabled t
		:title-prefix "event"
		:template "default-org"
		:prompt "输入事件名: ")


       ;; about talent people.
       (list	:prefix "talent"
		:root-dir "talent"
		:org-roam-type t
		:title-enabled t
		:title-prefix "talent"
		:template "default-org"
		:prompt "输入名人（记录名言）: ")


       ;; follows
       (list	:prefix "online-users"
		:root-dir "online-users"
		:org-roam-type t
		:title-enabled t
		:title-prefix "online-users"
		:template "default-person"
		:prompt "输入人名或ID: ")

       ;; 自媒体评论
       (list	:prefix "media-review"
		:root-dir "media-review"
		:org-roam-type t
		:title-enabled t
		:title-prefix "Media Review"
		:template "default-org"
		:prompt "输入媒体名: ")


       ;; Deprecated.
       ;; --------------------------------------
       (list	:prefix "n2-gps"
		:root-dir "gps/n2"
		:org-roam-type nil
		:date t
		:title-enabled nil
		:title-prefix "GPS-N2"
		:template "default-gps")

       (list	:prefix "self-sufficiency-gps"
		:root-dir "gps/self-sufficiency"
		:org-roam-type nil
		:date t
		:title-enabled nil
		:title-prefix "GPS-self-sufficiency"
		:template "default-gps")

       (list	:prefix "vibjoy"
		:root-dir "project/vibjoy"
		:date nil
		:org-roam-type t
		:title-enabled t
		:title-prefix "vibjoy"
		:template "default-org-with-title"
		:prompt "选择或输入开发 vibjoy 的子主题: ")

       (list	:prefix "vibe-collection"
		:root-dir "vibe-coding-artifact-collecttion"
		:date t
		:org-roam-type t
		:title-enabled t
		:title-prefix "vibe-collection"
		:template "default-vibe-collection"
		:prompt "选择或输入收集的 vibe artifact: ")
       ))

;;; topics.el ends here
