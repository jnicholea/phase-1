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

 

Bash Commands:

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