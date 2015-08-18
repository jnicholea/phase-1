## Tracking Changes Reflection

- How does tracking and adding changes make developers' lives easier?
- What is a commit?
- What are the best practices for commit messages?
- What does the HEAD^ argument mean?
- What are the 3 stages of a git change and how do you move a file from one stage to the other?
- Write a handy cheatsheet of the commands you need to commit your changes?
- What is a pull request and how do you create and merge one?
- Why are pull requests preferred when working with teams?


##**My Reflections**
Tracking Changes adds security to your projects. If coders are tracking changes correctly, any mistakes can be rectified by reverting to previous commits. Some examples of times when this would be useful:

1) If someone commits code that causes the program to break, it can be reverted back to a previous build that works. 
2) Track Changes allows you to pinpoint who made each change so you can discuss it with them, or ask questions.
3) If a coder has multiple files with edits, but they only want to commit one of them, they can do it by simply not adding the others to the commit. 

A Commit is essentially a selective Save of a branch. If a coder has a branch with 20 files in it, and they have edited 10 of them, they can choose exactly which files they want to check back in to the branch. They can add files individually with *git add filename*, or add everything with *git add .*. Once they have selected the files they want to commit, they just type *git commit*. This will pop up a text window where they can explain what changes they have made. Alternatively, they can use *git commit -m message* to add the message directly from the command line. This will save all of the data selected to the branch, and it can then be either uploaded to GitHub, or merged back in to Master (or another branch).

Git Commit Messages should be written in the present tense. You wouldn't write "Fixed some bugs" or "Added a Save Menu" - you would instead write "Fixes bugs" or "Add a Save Menu". The purpose of this is that users do not always merge all of the changes in a repository. Instead, they can pick and choose which branches they want to merge - so looking through a list of changes in the present text is more accurate to what they will actually be doing if they integrate that changelist. When writing a Git Commit message, there are 2 different ways to do it - the long way, and the short way. The short way it to write one single line that sums up all of your fixes - note that you want to keep your commit messages to 72 characters and under. The long way is to write a summary (think email Subject) on the first line of the Commit Message, and then add another paragraph underneath going in to more detail. This way, other users can get a better idea of what you were thinking when you made your changes, and you can explain your methodology. 

A HEAD^ argument allows you to go back Commit versions. Using HEAD^ will take you to your last commit, and you can move backwards from there by usig HEAD~3, 4, 5, etc. The command for using these is *git reset HEAD -- filename*. 

The states of a GIT Change are:
	1) Untracked Files
	2) Changes not staged for Commit
	3) Changes to be Comitted

An Untracked File is a file that Git has not seen before. It does not exist in the current repository - I think this would occur most often when a new file is created. If you check your *Git Status* after creating a new file, that file will show up under Untracked. If you want to add that file to Git, you need to type *git add file*. Next time you use *git status* the file should show up under the "Changes to be Comitted". If you *git commit* at this point, the file will commit and be added to the branch. 

However, if you do not want to commit that file after all, you would use a HEAD argument. For example, *git reset HEAD file* would remove the file from the commit and it would show up in Untracked next time you checked status. 

Once you type *git commit*, all of the changes marked as "Changes to be Comitted" in status will then commit to the branch, and can be uploaded to github - or branched if necessary. 

####**Git Commit-Related Commands**

*-git status* - Check the status of all files; do ths often!


*-git add file* - Add the specified file to Changes to be Comitted

*-git reset --soft HEAD^* - used to remove files from the Chages to be Comitted

*-git checkout file* - Used to revert a modified file to its previous commit

*-git commit -m "message"* - Command to Commit a change with a message explaining the change


####**Pull Requests**

A pull request if a request for someone to review your code before it is merged. A pull is requested through GitHub by...

1)  going to the Repository you're working in, and then selecting "Pull Requests" from the menu on the right. 

2) Click the "New Pull Request" button

3) Change the **Compare** dropdown to the Branch your changes are in, and the Branch you want to merge in to in the **Base* drop down. 

4) Click "Create Pull Request"

5) Fill out comments, if necessary, then click Create Pull Request


At this point, someone else should be reviewing the code to confirm that it doesn't break anything. They would then hit Merge and Pull Request. At this point, the branch has been merged, and you can delete it. 

Now, we need to get the updated Branch (Master) back on to your machine. Here's how:

1) Open up your Terminal and navigate to the correct directory for the Repository

2) Switch back to Master with *git checkout master*

3) Type *git pull* - this will syn you up with the Master changes on GitHub

4) Delete the old branch using *git branch -d OldBranch*


You should now be fully synced up to Master, your code reviewed, and your repository clean of unneeded branches. 

Pull requests are useful check and balance. By using the Pull Request system, other users are responsible for merging your code. They will be looking at it with a fresh set of eyes and make sure that it works before they approve the request. This prevents the type of issue where someone works late on Friday night, finishes up, and then merges code directly in to Main that proceeds to crash the system. 

People can get tunnelvision when working on something for long enough, and not see the potential conflicts that their code can have - having an extra person look at it reduces the amount of times that world ending bugs sneak through. 