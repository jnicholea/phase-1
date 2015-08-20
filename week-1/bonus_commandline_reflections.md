###2: Intermediate Command Line Exploration

Command Line tools can be used to quickly search for, and modify files. It is much quicker than searching for a file in your OS shell. It also has some functionality that is either non-existant, or very hard to find in the shell. For example, you can use GREP to search for specific phrases inside of documents, and then you can Pipe that information to another Unix program like LESS, Wordcount, etc. You can also > it in to a new file. I could search for all lines that contain the word "Banana" and then > those lines directly in to a new text document. 

I can also use tools like sed to do mass replacements on files. Using *sed s/FIND/REPLACE/b File1 > File2* I can find all instances of FIND in File1, and then replace them with REPLACE, and output everything to File2. You can also do an internal replace with *sed -i.bak s/FIND/REPLACE/b File*. This will replace all FIND with REPLACE in File, and will also create a backup of the file in case anything goes wrong. Sed is extremely powerful, and seems like it'd be pretty easy to mess up your OS if you use it wrong. 

PUSHD and POPD work together to make switching between directories convenient. *PUSHD directory* will switch to the specified directory, and add it to the Stack. If you use POPD, you will return to the last directory that you PUSHD'd to. If you PUSHD'd to multiple folders in a row, using POPD will take you back through those folders in the same order. 

Less and More do essentially the same thing. They display text on screen, but allow you to page through it individually. If you were to CAT a large file, it would dump it all out at once. If you use Less or More, you can scroll through it. You can Pipe data from a Search or GREP in to Less/More to make reading it more manageable. 

File Searching can be done using *find . -name keyword* - the . mean that it will search in the current folder and all subfolders for the keyword specified. You can use wildcards in the keyword to narrow or expand your search as necessary. You can also pipe the results in to a text document, or LESS/MORE. 

You can search for text within a file by using GREP. The command would be *grep "PHRASE" filename"*. By default, the search will be case sensitive. You can add a -i arg to make the search case insensitive. You can also pipe the output into a different text file, or into LESS/MORE, or any other UNIX similar command. 

Your computer Environment is a set of variables that contains information related to your terminal. It stores information like the color of different words, your default path, and other settings. You can add things to your environment by editing the bash_profile file in your text editor. For example, I personally updated my environment with *alias l="ls -l"*, so now when I type "l" in my terminal, it automatically translates it to "ls -l" and displays my directory in List format, the way I prefer. 