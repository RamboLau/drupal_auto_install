; ----------------
; Generated makefile from http://drushmake.me
; Permanent URL: http://drushmake.me/file.php?token=5b914f7e2a36
; ----------------
;
; This is a working makefile - try it! Any line starting with a `;` is a comment.
  
; Core version
; ------------
; Each makefile should begin by declaring the core version of Drupal that all
; projects should be compatible with.
  
core = 7.x
  
; API version
; ------------
; Every makefile needs to declare its Drush Make API version. This version of
; drush make uses API version `2`.
  
api = 2
  
; Core project
; ------------
; In order for your makefile to generate a full Drupal site, you must include
; a core project. This is usually Drupal core, but you can also specify
; alternative core projects like Pressflow. Note that makefiles included with
; install profiles *should not* include a core project.
  
; Drupal 7.x. Requires the `core` property to be set to 7.x.
projects[drupal][version] = 7

  
  
; Modules
; --------
projects[ctools][version] = 1.0-rc1
projects[ctools][type] = "module"
projects[context][version] = 3.0-beta1
projects[context][type] = "module"
projects[libraries][version] = 2.1
projects[libraries][type] = "module"
projects[apc][version] = 1.0-beta4
projects[apc][type] = "module"
projects[httprl][version] = 1.11
projects[httprl][type] = "module"
projects[services][version] = 3.4 
projects[services][type] = "module"
projects[smtp][version] = 1.0                                                            
projects[smtp][type] = "module"   
;projects[forum][type] = "module"
;projects[forum][download][type] = "git"
;projects[forum][download][url] = "git@git.verycloud.cn:verycloud/forum.git"
projects[service_modules][type] = "module"                                              
projects[service_modules][download][type] = "git"   
projects[service_modules][download][url] = "git@git.verycloud.cn:verycloud/service_modules.git"     


  

; Themes
; --------
;projects[omega][version] = 3.0-rc4
;projects[omega][type] = "theme"

  
  
; Libraries
; ---------
libraries[jquery][download][type] = "file"                                               
libraries[jquery][download][url] = "https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"    
libraries[jqueryui][download][type] = "file"                                             
libraries[jqueryui][download][url] = "https://ajax.googleapis.com/ajax/libs/jqueryui/1.8.18/jquery-ui.min.js" 

;;;-----------------------------------------------------------------------------
;OTHER EXAMPLES
; Core project
; ------------
; In order for your makefile to generate a full Drupal site, you must include
; a core project. This is usually Drupal core, but you can also specify
; alternative core projects like Pressflow. Note that makefiles included with
; install profiles *should not* include a core project.

; Use pressflow instead of Drupal core:
; projects[pressflow][type] = "core"
; projects[pressflow][download][type] = "file"
; projects[pressflow][download][url] = "http://launchpad.net/pressflow/6.x/6.15.73/+download/pressflow-6.15.73.tar.gz"

;projects[] = drupal

; Projects
; --------

;projects[] = views	
; If you want to retrieve a specific version of a project:

;projects[cck] = 2.6
;projects[ctools][version] = 1.3

;projects[data][type] = module
;projects[data][download][type] = cvs
;projects[data][download][module] = contributions/modules/data
;projects[data][download][revision] = DRUPAL-6--1

; Clone a project from github.

;projects[tao][type] = theme
;projects[tao][download][type] = git
;projects[tao][download][url] = git://github.com/developmentseed/tao.git

; If you want to install a module into a sub-directory, you can use the
; `subdir` attribute.
;projects[admin_menu][subdir] = vanilla

; To apply a patch to a project, use the `patch` attribute and pass in the URL
; of the patch.
;projects[admin_menu][patch][] = "http://drupal.org/files/issues/admin_menu.long_.31.patch"

