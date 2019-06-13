SET currentPath=%~dp0
SET gitFolderName=learngit
SET TextName=newGitText.txt
SET folderName=gitFolder
SET gitPath=%currentPath%../../
SET gitFolderPath=%gitPath%%gitFolderName%
SET gitHubLocation=zhilingcui/gitWorkPlace.git
CD %gitFolderPath%
rem 创建dev分支并且跳转到dev分支
git checkout -b dev
rem git branch dev
rem git checkout dev
pause