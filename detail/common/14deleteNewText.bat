SET currentPath=%~dp0
SET gitFolderName=learngit
SET TextName=newGitText.txt
SET folderName=gitFolder
SET gitPath=%currentPath%../../../
SET gitFolderPath=%gitPath%%gitFolderName%
CD %gitFolderPath%
CD %folderName%
rem 添加txt到暂存区
DEL %TextName%
pause