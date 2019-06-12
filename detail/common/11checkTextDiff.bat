SET currentPath=%~dp0
SET gitFolderName=learngit
SET TextName=gitText.txt
SET folderName=gitFolder
SET gitPath=%currentPath%../../../
SET gitFolderPath=%gitPath%%gitFolderName%
CD %gitFolderPath%
CD %folderName%
rem 查看工作区和版本库里面最新版本的区别
git diff HEAD -- %TextName%
pause