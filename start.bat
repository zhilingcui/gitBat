SET currentPath=%~dp0
SET batFolder=detail
SET commonFolder=common
SET batPath=%currentPath%%batFolder%
SET commonPath=%currentPath%%batFolder%/%commonFolder%
rem 1.创建git仓库并创建文件夹和文件
CD %batPath%
CALL 01creatGitFolder
CD %batPath%
CALL 02gitInit
CD %batPath%
CALL 03creatFolderAndText
CD %commonPath%
CALL 01checkStatus
CD %commonPath%
CALL 02checkDiffent
CD %commonPath%
CALL 03addContentToText
CD %commonPath%
CALL 04addText
CD %commonPath%
CALL 05commit
CD %commonPath%
CALL 01checkStatus
CD %commonPath%
CALL 02checkDiffent

rem 2.版本回退
CD %commonPath%
CALL 03addContentToText
CD %commonPath%
CALL 04addText
CD %commonPath%
CALL 05commit
CD %commonPath%
CALL 06checkLog
CD %commonPath%
CALL 07reset
CD %commonPath%
CALL 06checkLog
CD %commonPath%
CALL 09resetPreLog
CD %commonPath%
CALL 06checkLog

rem 3.了解工作区和暂存区
CD %commonPath%
CALL 03addContentToText
CD %batPath%
CALL 05createNewText
CD %commonPath%
CALL 01checkStatus
CD %commonPath%
CALL 04addText
CD %commonPath%
CALL 10addNewText
CD %commonPath%
CALL 01checkStatus
CD %commonPath%
CALL 05commit
CD %commonPath%
CALL 01checkStatus

rem 4.管理修改
CD %commonPath%
CALL 03addContentToText
CD %commonPath%
CALL 04addText
CD %commonPath%
CALL 01checkStatus
CD %commonPath%
CALL 03addContentToText
CD %commonPath%
CALL 05commit
CD %commonPath%
CALL 01checkStatus
CD %commonPath%
CALL 11checkTextDiff

rem 4.撤销修改
CD %commonPath%
CALL 03addContentToText
CD %commonPath%
CALL 01checkStatus
rem 撤回版本库
CD %commonPath%
CALL 12backChange
CD %commonPath%
CALL 01checkStatus
rem 撤回暂存区时的修改
CD %commonPath%
CALL 03addContentToText
CD %commonPath%
CALL 04addText
CD %commonPath%
CALL 03addContentToText
CD %commonPath%
CALL 01checkStatus
CD %commonPath%
CALL 12backChange
CD %commonPath%
CALL 01checkStatus
rem 撤回暂存区的修改
CD %commonPath%
CALL 03addContentToText
CD %commonPath%
CALL 04addText
CD %commonPath%
CALL 01checkStatus
CD %commonPath%
CALL 13resetFile
CD %commonPath%
CALL 01checkStatus
CD %commonPath%
CALL 12backChange
CD %commonPath%
CALL 01checkStatus

rem 5.删除文件
CD %commonPath%
CALL 14deleteNewText
CD %commonPath%
CALL 01checkStatus
CD %batPath%
CALL 06rmGitText
CD %commonPath%
CALL 05commit
CD %commonPath%
CALL 01checkStatus

rem 6.添加远程仓库
rem CD %batPath%
rem CALL 07remoteAddOrigin
rem CD %batPath%
rem CALL 08firstOriginPush
rem CD %commonPath%
rem CALL 03addContentToText
rem CD %batPath%
rem CALL 09originPush
rem CD %commonPath%
rem CALL 04addText
rem CD %batPath%
rem CALL 09originPush
rem CD %commonPath%
rem CALL 05commit
rem CD %batPath%
rem CALL 09originPush
rem CD %batPath%
rem CALL 04deleteGitFolder

rem 7.从远程拉取仓库内容
CD %batPath%
CALL 01creatGitFolder
CD %batPath%
CALL 10CloneGit
CD %batPath%
CALL 04deleteGitFolder

rem 8.创建与合并分支
CD %batPath%
CALL 01creatGitFolder
CD %batPath%
CALL 02gitInit
CD %batPath%
CALL 03creatFolderAndText
CD %commonPath%
CALL 01checkStatus
CD %commonPath%
CALL 02checkDiffent
CD %commonPath%
CALL 03addContentToText
CD %commonPath%
CALL 04addText
CD %commonPath%
CALL 05commit
CD %batPath%
CALL 11creatDev
CD %batPath%
CALL 12checkBranch
CD %commonPath%
CALL 03addContentToText
CD %commonPath%
CALL 04addText
CD %commonPath%
CALL 05commit
CD %batPath%
CALL 13checkoutMaster
CD %batPath%
CALL 14mergeDev
CD %batPath%
CALL 15deleteDev
CD %batPath%
CALL 12checkBranch

rem 9.解决冲突
CD %batPath%
CALL 11creatDev
CD %batPath%
CALL 12checkBranch
CD %commonPath%
CALL 03addContentToText
CD %commonPath%
CALL 04addText
CD %commonPath%
CALL 05commit
CD %batPath%
CALL 13checkoutMaster
CD %commonPath%
CALL 15addOtherContentToText
CD %commonPath%
CALL 04addText
CD %commonPath%
CALL 05commit
CD %batPath%
CALL 14mergeDev
CD %commonPath%
CALL 01checkStatus
CD %commonPath%
CALL 04addText
CD %commonPath%
CALL 05commit
CD %batPath%
CALL 16checkBranchLog
CD %batPath%
CALL 15deleteDev
CD %batPath%
CALL 12checkBranch

rem 9.use merge --no -ff
CD %batPath%
CALL 11creatDev
CD %batPath%
CALL 12checkBranch
CD %commonPath%
CALL 03addContentToText
CD %commonPath%
CALL 04addText
CD %commonPath%
CALL 05commit
CD %batPath%
CALL 13checkoutMaster
CD %batPath%
CALL 17mergeNoFf
CD %commonPath%
CALL 06checkLog
CD %batPath%
CALL 15deleteDev
CD %batPath%
CALL 12checkBranch
CD %commonPath%
CALL 06checkLog

rem 10.use stash
CD %batPath%
CALL 11creatDev
CD %batPath%
CALL 12checkBranch
CD %commonPath%
CALL 03addContentToText
CD %commonPath%
CALL 01checkStatus
CD %batPath%
CALL 23stashList
CD %batPath%
CALL 18gitStash
CD %batPath%
CALL 23stashList
CD %batPath%
CALL 13checkoutMaster
CD %batPath%
CALL 19creatBugDev
CD %batPath%
CALL 12checkBranch
CD %commonPath%
CALL 15addOtherContentToText
CD %commonPath%
CALL 04addText
CD %commonPath%
CALL 05commit
CD %batPath%
CALL 13checkoutMaster
CD %batPath%
CALL 20mergeBugDev
CD %batPath%
CALL 16checkBranchLog
CD %batPath%
CALL 21deleteBugDev 
CD %batPath%
CALL 12checkBranch
CD %batPath%
CALL 22checkoutDev
CD %batPath%
CALL 12checkBranch
CD %commonPath%
CALL 01checkStatus
CD %batPath%
CALL 23stashList
CD %batPath%
CALL 24stashPop
CD %batPath%
CALL 23stashList







rem 删除所有的痕迹
CD %batPath%
CALL 04deleteGitFolder