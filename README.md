# GitHub for Developers
[![Join the chat at https://gitter.im/githubteacher/github-for-developers-2016-04](https://badges.gitter.im/githubteacher/github-for-developers-2016-04.svg)](https://gitter.im/githubteacher/github-for-developers-2016-04?utm_source=badge&utm_medium=badge&utm_campaign=pr-badge&utm_content=badge)

**Please note**: we'll be using Gitter, a chat service that integrates with GitHub, for Q&A. Please click on the button above to join the chat room associated with this repo.
## Notes from Day 1, section 2:
### Using Git Locally
1. Change your file from 'working' to 'staging' by running `git add <file-name>`
2. Change your file from 'staging' to 'history' by running git commit. (To avoid using the text editor, use `git commit -m "Enter commit message here")`
3. Text editor opens: Write a 'commit message' tells a story of the changes you just made in 50 characters or less.
4. List the files in your current directory by running `ls -la`
5. We learned about 'working', 'staging', and 'history' and how commits fit into those areas using [this resource.](https://services.github.com/)
6. Create a new file and repeat steps 1 - 3 for the two stage commit. This way, we'll have two commits to work with.
7. Here are some shortcuts to know about in the future:
  * To automatically stage all files that have been changed, run `git add -A`. Note: This will only work for files that are already being tracked, not brand new files.
  * Avoid the text editor in the commit by running git `commit -m "commit message"`

### Collaborating on Code
#### Review of moving from Git to GitHub
* We talked about remote, and how we can see details about it by running `git remote`, `git remote -v`, and `git remote show origin`
* 'Push' our changes on the current branch to GitHub.com by running `git push -u origin <branch-name>`
* If you forget the `-u` tag, set a 'upstream branch' relationship between our local branch and the GitHub.com remote branch by running `git branch --set-upstream-to=origin/<remote-branch-name>`
  * This means we only have to run `git push` and `git pull` in the future
    * git pull is the combination of `git fetch` and `git merge`
* `git branch` and `git branch -a` will help you see what is going on with your local and remote branches
* On GitHub.com, open a pull request in our [class repository](https://github.com/githubteacher/github-for-developers-2016-04) by clicking the green "New pull request" button.
  * Make sure your pull request says `base: master` and `compare: <your-new-branch>`
  * Give it a good title and message about the changes you introduced. Bonus points for using [markdown](https://guides.github.com/features/mastering-markdown/) and emojis!
  * You can add labels and assignees to pull requests like we did with Issues.
* Using @mention is important - you can mention people or teams to give them a notification to see your pull request to start collaboration.

#### Notifications
* Notifications are an important part of GitHub. You can customize these several ways.
  * For GitHub in general, [Settings/Notifications](https://github.com/settings/notifications)
  * For repositories, at the top of a repository page on [GitHub.com](https://github.com/) by clicking "Watch"
  * For individual issues and pull requests by clicking "unsubscribe" on the right hand side of the webpage
* On the pull request page, we talked about the different tabs for 'conversation', 'commits', and 'files changed'.
  * 'Conversation' is where you and your colleagues can collaborate on your changes. This view includes comments as well as notes of when changes happen.
  * 'Commits' shows a history of what commits were added - this is why your commit messages matter - they tell a story.
  * 'Files changed' will let you see the actual code in several different formats. You also can make line level comments from this view.

## Notes from Day 1, section 3:
### Collaborate on GitHub
* Once you've opened a pull request, go into someone else. Please don't merge someone else's PR.
* Look at their code, and make a comment about something you see.

### Merging Pull Requests
#### Pull requests
* During class, please do not close or merge any pull requests other than your own.
* On your own pull request, if all is green and there are no conflicts, go ahead and merge your branch.
* After merging a branch, it's part of the `master` branch and good practice is to delete it.
  * This is a major difference between Git and some older version control systems. In Git, branch often, merge often, and delete branches often.
* Back at the command line, we need to pull down the changes from GitHub.com in the remote repository.
  * `git checkout master`
  * `git pull`
  * `git branch --merged`
  * `git branch -d <branch-name>`
  * `git fetch --prune`
* Configure your settings to do this by default by typing `git config --global fetch.prune true`

### View Local Changes

#### Local Diffs
* View local diff diagram [here](https://training.github.com/kit/modules/CONT-CLI-11_Viewing-local-diffs.html)

#### Local History
* Use git log to view the history of the repository
* git log will show commits from your own local repository, but also changes made by other collaborators
* Experiment with different option switches to view history:
  * `git log`
  * `git log --oneline`
  * `git log --oneline --graph`
  * `git log --oneline --graph --decorate`
  * `git log --oneline --graph --decorate --all`
  * `git log --stat`
  * `git log --patch`
* Use the up and down arrows or press enter to view additional log entries. Type q to quit viewing the log and return to the command prompt.

#### Streamline Workflow With Aliases
Set up an alias in configurations: `git config --global alias.<desired-alias> "the long version of the command that you want the alias to run, without git at the beginning, and with the desired flags"`

### Extras
#### Terminal Theme
A few people also asked about @patrickmckenna's Terminal.app theme. He uses [ocean-terminal](https://github.com/mdo/ocean-terminal). His `PS1` (prompt) is

```bash
export PS1="\[\$(tput bold)\]\[\$(tput setaf 6)\]\w\[\$(tput setaf 3)\]\$(git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/')\[\$(tput setaf 6)\] > \[\$(tput sgr0)\]"
```
#### Useful Bits
To print the name of your currently checked out branch in your prompt, include this line as part of your `PS1`:

```bash
git branch 2>/dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
```
