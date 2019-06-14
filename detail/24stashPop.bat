SET currentPath=%~dp0
SET gitFolderName=learngit
SET TextName=newGitText.txt
SET folderName=gitFolder
SET gitPath=%currentPath%../../
SET gitFolderPath=%gitPath%%gitFolderName%
SET gitHubLocation=zhilingcui/gitWorkPlace.git
CD %gitFolderPath%
rem 恢复内容并删除
rem stash apply   and  stash drop
git stash pop
pause