SET currentPath=%~dp0
SET gitFolderName=learngit
SET TextName=gitText.txt
SET folderName=gitFolder
SET gitPath=%currentPath%../../../
SET gitFolderPath=%gitPath%%gitFolderName%
CD %gitFolderPath%
rem 回退上一个版本
rem git reset --hard HEAD^
git reset --hard HEAD~1
pause