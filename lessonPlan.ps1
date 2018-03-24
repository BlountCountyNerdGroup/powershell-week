# create today's file in the desktop

# start off by googling how to make variables. 
# This is almost always the first think you'll need to google when learning a new language.

# in powershell, we make variables by writing a dollar sign and some name, and then assigning that to a variable
$myNumber = 32
$name = "Garrett"
$hasHad = $true

# in general, the next thing you look up is how to print out variables, so go ahead and google that.
# there are 2 accepted ways of printing things out. You can either do

Write-Output "Hello"
# or 
echo "Hello"

# at this point, you'll want to run your program to make sure that it works.

# one thing that powershell excels at is creating and deleting files. Let's start by creating some.
# What if we created 100 text files named "text file 1", "text file 2", etc.
# we'll need to use a loop unless we want to do this manually. So how do we make a while loop in powershell?
# Well, it looks like this

$numOfFiles = 100
$i = 1
while ($i -le $numOfFiles) {
    echo $i # just to see if it's working

    $i += 1
}

# it closes immediately, so to stop that, we can pause the program after it runs the loop
Start-Sleep -seconds 5;

# before changing our script any more, over on the left, do ls to see all your folders, and cd into your desktop
# type into powershell
"Hello" > "my text file name.txt"

# now we want to actually create the files, so let's edit lien 26 in our loop to look like this:

"testing" > "text file $i.txt";
# or even
"$i" > "text file $i.txt";

# now we've got quite the mess, and we need to clean it off
# the command to delete a single file looks like this

del "text file 1.txt"

# but how would we delete all 100 that we made?
# well, a * is a wild card, meaning if we type

del "*.txt"

# then it'll delete all text files in the folder that our program is in. 
# There shouldn't be any other text files on your desktop except for the ones that you made, so this should work for us.

# at this point, we may want to expand our text file program to ask the user how many text files to make
# so how do we get input?

# it looks like we do it with Read-Host
# try typing it into the powershell to the left to see what it does

# we can now replace the line where we set $numOfFiles = 100 and switch it with

$numOfFiles = Read-Host "How many files do you want?"

# after this point, we can just mess around with getting user input, doing stuff with it, potentially using if statements, etc.