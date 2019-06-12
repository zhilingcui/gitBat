SET currentPath=%~dp0
SET gitFolderName=learngit
SET gitPath=%currentPath%../../
SET gitFolderPath=%gitPath%%gitFolderName%
CD %gitFolderPath%
rem 创建版本库
git init
pause