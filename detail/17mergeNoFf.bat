SET currentPath=%~dp0
SET gitFolderName=learngit
SET TextName=newGitText.txt
SET folderName=gitFolder
SET gitPath=%currentPath%../../
SET gitFolderPath=%gitPath%%gitFolderName%
SET gitHubLocation=zhilingcui/gitWorkPlace.git
CD %gitFolderPath%
rem 查看分支合并情况
git merge --no-ff -m "merge with no-ff" dev
pause