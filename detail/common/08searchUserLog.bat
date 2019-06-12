SET currentPath=%~dp0
SET gitFolderName=learngit
SET TextName=gitText.txt
SET folderName=gitFolder
SET gitPath=%currentPath%../../../
SET gitFolderPath=%gitPath%%gitFolderName%
CD %gitFolderPath%
rem 查找用户日志
git reflog
pause