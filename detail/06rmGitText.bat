SET currentPath=%~dp0
SET gitFolderName=learngit
SET TextName=newGitText.txt
SET folderName=gitFolder
SET gitPath=%currentPath%../../
SET gitFolderPath=%gitPath%%gitFolderName%
CD %gitFolderPath%
CD %folderName%
rem 创建文件夹并且创建文件
git rm %TextName%
pause