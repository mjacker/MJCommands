## General usage
- Git initialize
    `git init`
- Add files
    `git add .`
- Commit
    `git commit -m "starting git"`
- Remote
    `git remote add origin https://github.com/mjacker/nameBranch.git`
    `git push --set-upstream origin nameBranch`

### Branches
	--delete
		`git branch --delete <branch-name>

### Options for log
    git log --graph --all --oneline

### To list all the files currently being tracked under the branch maste
	 git ls-tree -r --name-only master
		> -r is for recursive

### Global Config Text editor:
    nano	~ git config --global core.editor "nano -w"~
    vim	    ~ git config --global core.editor "vim"~

### Get origin status in git log, need tu add to remote
    git remote add origin https://github.com/mjacker/BranchName.git
    git set-url origin https://github.com/mjacker/BranchName.git #really need this?
    git push -u origin master

### Remote options 
- Display al remote urls
    `remote -v`
- Remove url
    `git remote remove origin`
- Add url
    `git remote add origin <url>/<repository-name>.git`
- Update existing remote url
    `git remote set-url <remote-name> <new-url>`
- Inspecting a Remote
	 `git remote show`
	 `git remote show origin`

### Remote branches
	Delete remote branch:
		`git push --delete <remote name> <branch name>
