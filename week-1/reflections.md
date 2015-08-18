# 1.1 - Think About Time Reflection
I focused more heavily on the productivity articles as I have a Project Management background and already familiar with Agile and SCRUM. Particularly, I found the use of Meditation and The Flow to be most interesting. At my previous job, I would occasionally find myself entering the flow and seeing my productivity increase monumentally, but I never understood why or how it would happen. Knowing now that flow is related to the challenge level of the task itself, and my interest in it, will make it much easier to achieve that state in the future. The Meditation portion of the articles will also prove useful for concentration and stress relief - I can be high strung when overburdened, and taking a step back to employ the meditation tips may help with that. 

Time Boxing is an Agile/SCRUM technique used to estimate the number of man-hours a particular task would require. For example, in a sprint discussion about how to build a punch-clock application, the individual parts of that application would be broken down in to individual tasks. You would have your Timer, Buttons, Interface, etc. The team would each put in a 'bid' for how many man hours they think it would take. Depending on the SCRUM team, the highest and lowest bids would be eliminated, and the highest of the remaining would be used as the actual estimate - or the team would argue their cause on why an item would be more/less hours. 

My current time management system is a combination of Time Boxing and Excel Calendar. I like to build out Excel workbooks with all of the tasks I have on my plate. For each task, I record the following:

* Date the task was assigned

* Date the task needs to be complete

* Estimated amount of time to complete (Timeboxing)

* Planned Start Date

* Any additional milestones - checkins, peer review, approvals, etc

* Does the task have any contingencies based on other tasks or other people/departments?

* Current state of the task

This lets me keep a tight look at everything I have done, everything that needs to be done, and helps me pinpoint areas that are under/over scheduled. New tasks are added to the tracker as they come up, and can cause dates to shift around. Sometimes this will require me to compress timelines to finish work on time, and other times it will give me the ammunition needed to push back on deadlines that cannot be completed due to other contingencies.

My plan for Phase 0 time management is to continue to use the system I already have in place. It has served me well over the last few years, and I think it will continue to work for me. I will be incorporating the meditation and 'flow', as well. 


# 1.2 - The Command Line Reflection

A shell is like a wrapper for the nitty-gritty of the computer. Shell's are interfaces like Windows or OSX - they take everything that a computer can do, and present it to end users in an easily consumable manner. Everything that a user does in the shell is translated to machine code - so clicking the "Save" button doesn't actually save a file itself - it translates that the user has pressed the "Save" button into something that the computer understands, that will then proceed to save data.

Bash is the language that UNIX uses. It's essentially its own programming language in command line. Each command typed in to Bash tells the computer to do something. You can use it to quickly and efficiently move, delete, and copy files, search for text within files, and combine files. Bash trades prettyness/userfriendlyness for pure efficiency. If you're trying to copy files or find files, it's much quicker to type the appropriate Bash commands than it is to use Finder. 

I had an old DOS computer when I was a kid, so the most challenging part of this unit for me learning the new syntax for commands that I already knew. I'm used to DELTREE instead of RM -RF, DIR instead of LS, Move instead of MV, and so on. After a few times reading through the tutorials, I feel like I have been able to adapt - although I still catch myself typing DIR instead of LS sometimes. 

In my opinion, the most important commands to know would be related to directory navigation and finding files. LS is pretty robust in that you can use it to look at files in a few different ways. You can use LS -L to view everything in list few, -R to list all files in subfolders as well. You can even pipe it with LESS to view them one page at a time. 

Find and GREP are also extremely useful in conjunction. If you're looking for a particular file type, you can use "find . -name "*.filetype" -print" to find everything starting in the current directory, as well as all subdirectories. You can then use that with GREP to look through the file you just found for certain strings. 

For example, if you were looking to see how many times the word "Banana" (case insensitive) was used in the file "Banana.txt", but could not remember where to find the TXT file itself, you would do something like this:

find . -name "Banana.txt" -print

cd /banana/directory/here/

grep -ic banana Banana.txt > BananaCount.txt

This would create a new file named BananaCount.txt that would store the number of times the word Banana appeared in Banana.txt. Useful!

 

####**Bash Commands:**

PWD - prints the directory that you are currently in

ls - lists all of the files in the current directory

mv - move a file to another directory

cd - change directory to the specified directory; not specifying a directory will return to the default directory

../ - refers to the parent of the directory you are currently in

touch - used to create an empty file with the specified name

mkdir - used to create a directory - or a directory path using -p

less - prints out the contents of a file one page at a time

rmdir - used to remove an empty directory; rm -rf must be used if the directory is not empty

rm - deletes the specified file

help - type "man" before any function to bring up its manual


# 1.4 - Forking and Cloning Reflection

Creating, Forking, and Cloning a repo are all surprisingly easy tasks. I figured this is where things would start to get difficult, but GitHub really does seem to be made so that anyone can use it - which is very helpful for me! 

####**Creating a Repo:**

You will want to Create a Repo for new projects that you are creating. This will create an empty repository for you to Upload your code to. If you want to play with code that already exists on Github, you would want to Fork a repository instead, which I'll explain in the next section. 

1) Navigate to www.github.com (Links to an external site.)

2) Log In using your username and password

3) Click the + icon next to your name, and then select New Repository

4) Enter a name for the Repository, add a description, and then select whether you want it to be Public or Private, and what kind of license you want it to use. 

5) Click "Create Repository" - simple as that! The repository will now be available on Github.com, and you will be able to pull it down to your system. 

####**Forking a Repro:**

You will want to Fork a repo if you want to play with code that someone else has written. Forking the code essentially copies it to a Repository that you own. You can pull it down to your computer, make changes, and then commit them all without modifying the code in the original repository that you forked it from. This would allow for 2 separate programs to be branched from the same codebase. You would also be able to pull additional changes from the original repository if there were code changes you wanted in your Fork of the code. Setting up a Fork is incredibly simple. 

1) Navigate to the Repository you want to Fork

2) Click the "Fork" button in the upper right of the screen

3) Select the account you want to Fork the code to - in this case, it would be your own. 

And done! That's all it takes. The code would then be forked on to your Github account. 

####**Cloning a Repo:**

Using Git (not GitHub!) you can pull down all of the code in a particular GitHub repository. You do this by using Terminal/Command Line. Once you want to start working on editing code locally, all you have to do is: 

1) Open your Terminal

2) Type the command git clone http://www.github.com/username/repository_name.git (Links to an external site.) (if your username was "swats" and the Repository name in GIthub was "phase-0", then you would type git clone http://www.github.com/swats/phase-0.git and press enter). 

Assuming nothing went wrong, your terminal would then start to pull down all of the files in the repository you are cloning. There are a few different reasons I can think of where Cloning is useful

1) You want to make modifications to a Repository that you have Forked

2) You want to pull down the most recent committed changes in a Repository that you have created

3) You are working from a machine that is not your normal development machine, and want to pull down the most recent version of your code.

####**Commit and Submit:**

Once you've finished working in your cloned repository, you need to Commit your changes and Push them up to Github. 

1) In the terminal, type git status - this will show you all of the files that have been modified, but are not part of the next commit. 

2) Type git add <filename> to add all of the files that you have finished working on to the next commir. 

3) Type git commit to commit the files locally. 

Now the fun part - lets get them up on GIthub for everyone to see! 

4) Type git remote add master https://github.com/username/repository.git - This will tell Git where to put files when you Push. 

5) Type git push - you will be prompted for your username and password. Enter them!

Once completed, you should be able to go and loo at your Repository on Github, and you should see that all of your changes have been carried over. 

Finally, we can use Git to set up a different Branch in Github for our riskier changes. 

1) In Terminal, create and Check Out a new Branch

2) Make some changes to your files and save them

3) Git Add and Commit the changed files

4) Type git push origin <branchname>

5) Check Github - your new Branch should now appear inside of your Repository alongside Master!