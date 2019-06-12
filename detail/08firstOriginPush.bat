SET currentPath=%~dp0
SET gitFolderName=learngit
SET TextName=newGitText.txt
SET folderName=gitFolder
SET gitPath=%currentPath%../../
SET gitFolderPath=%gitPath%%gitFolderName%
SET gitHubLocation=zhilingcui/gitWorkPlace.git
CD %gitFolderPath%
CD %folderName%
rem 第一次推送内容到远程
git push -u origin master
pause