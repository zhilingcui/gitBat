SET currentPath=%~dp0
SET gitFolderName=learngit
SET TextName=newGitText.txt
SET folderName=gitFolder
SET gitPath=%currentPath%../../
SET gitFolderPath=%gitPath%%gitFolderName%
SET gitHubLocation=zhilingcui/gitWorkPlace.git
CD %gitFolderPath%
CD %folderName%
rem 推送编辑好的内容
git push origin master
pause