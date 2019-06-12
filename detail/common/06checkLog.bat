SET currentPath=%~dp0
SET gitFolderName=learngit
SET TextName=gitText.txt
SET folderName=gitFolder
SET gitPath=%currentPath%../../../
SET gitFolderPath=%gitPath%%gitFolderName%
CD %gitFolderPath%
rem 查看版本记录
git log
rem 查看版本记录简化版
git log --pretty=oneline
pause