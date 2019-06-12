SET currentPath=%~dp0
SET gitFolderName=learngit
SET TextName=newGitText.txt
SET folderName=gitFolder
SET gitPath=%currentPath%../../
SET gitFolderPath=%gitPath%%gitFolderName%
CD %gitFolderPath%
rem 创建文件夹并且创建文件
if not EXIST %folderName% MKDIR %folderName%
CD %folderName%
if not EXIST %TextName% TYPE NUL>%TextName%
pause