SET currentPath=%~dp0
SET gitFolderName=learngit
SET gitPath=%currentPath%../../
CD %gitPath%
rem 如果不存在文件夹就创建文件夹
if not EXIST %gitFolderName% MKDIR %gitFolderName%
pause