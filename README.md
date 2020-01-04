# Linux with Operating System Concepts Lab Manual - Richard Fox

## Lab 12:  Shell Scripting (part I)

Use wget to download these two files.  You will use them later in the lab.
> www.nku.edu/~foxr/CIT371/employees.txt
> www.nku.edu/~foxr/CIT371/students.txt

Unless asked other questions, your answer to each part will be the script (2, 3, 6, 7, 9-11) or revised script (5, 8) you came up with that solves the problem.  For these scripts, include the problem number in comments like #2.

1. Use vi to create the following script.  Call the file script1.  When completed, change the permissions to 745.  Run the script by typing ./script1.
```bash
#!/bin/bash
echo You are $USER
echo Your home directory is $HOME
echo Your home directory consists of `du –sH ~`
Alter your script so the output of each echo statement is redirected to the file info.txt.
```
How did you do this?

2. Use vi to create the following script, calling it script2.  When completed, change the permissions and run it.
```bash
#!/bin/bash
echo What is your name?
read NAME
echo What is your username?
read USERNAME
echo Hello $NAME, your home directory contents and size:`
```
Complete this script by adding instructions to output this user’s home directory contents assuming that the user’s home directory will be /home/$USERNAME as well as using the du statement from script1 to output the disk usage of the user’s home directory.

3. Rewrite the script from #2 so that the NAME and USERNAME are supplied to the script by parameters and remove the first four instructions (the first two echo and the two read statements).  Save and test your script.

4. Write the following script, calling the file script4.  Change its permissions appropriately
```bash
#!/bin/bash
if [ $# -ne 2 ]; then echo Illegal input
elif [ $1 –gt $2 ]; then echo $1 is greater
else echo $2 is greater
fi
```
Save and run the script providing it no parameters, two parameters of 5 and 10, two parameters of 10 and 5, and two parameters of 5 and 5.  What does [ $# -ne 2 ] mean?  Do we need this in the script?  Show how you would alter the script so that it can also output if the two parameters are the same.

5. Write the following script calling it script5.
```bash
#!/bin/bash
read –p “Enter the number you seek   ” NUM
for VALUE in $@; do
	if [ $VALUE –eq $NUM ]; then COUNT=$((COUNT+1)); fi
done
echo $NUM appeared $COUNT times
```
Run script5 passing it the list of numbers 5 10 6 12 5 18 10 4 19 21 5 12 18 22 and when prompted, input 5.  Rerun the script inputting 18 instead.  Rerun the script inputting 23 instead.  What outputs did you get for each input?  

6. Rewrite the script in #5 to input two inputs instead of just NUM and count the number of parameters that fall between the two.  For instance, if the input is 10 and 20, we would have 5 matches (12, 18, 19, 12, 18).  

7. Write a script that receives a list of parameters and output the largest and smallest of the list.  If the user does not pass any parameters, output an error message.  Test out your script to make sure it works in a variety of cases (no parameters, 1 parameter, 5 parameters, etc)

8.	Enter the following script into vi, calling it script8.
```bash
#!/bin/bash
for file in $@; do
	if [[ -r $file && -w $file && -x $file ]] 
then count=$((count+1)) 
fi
done
echo Of the $# files entered, $count were r/w/x
```
Run the script to make sure it works.  Modify the script in three ways:
	 1. output an error message if no parameters are supplied
	 2. rather than counting the number of files, add up the size of these files
	 3. Output the average size of the file (which will be the sum/$#)

9. Write a script which receives a directory name and iterates through all of the items in this directory, counting the number of items that are regular files, that are directories, and that are links, and output this result along with the total number of items being reported on.  Run your script on several directories like /etc, /bin and ~.  

10.	Write a script which receives a list of strings as parameters.  Input an “index string”.  Iterate through the list of strings and apply the `expr index …` operation on each string using the index string as the index (see chapter 7 for more information about how expr index works).  Output the string and the result of the index operation.  When done, run it passing the string
	> abacab foxtrot duke trespass
	
	and input the index string of `abcd.`  
	Your output should be abacab 1, duke 1, foxtrot 0, trespass 6. 