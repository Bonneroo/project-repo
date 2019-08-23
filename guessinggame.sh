#Peer Graded Assignment for Ben Bonner
#The Unix Workbench
#21 August 2019

function directorycat {
  echo $(ls) >> directoryls.txt #textfile of items in directory
  directorywc=$(wc -w < directoryls.txt) #how many words in the textfile (how many items in the directory). Redirected filename to omit from output.
  rm directoryls.txt #textfile has served its purpose. Removed clutter.
}

directorycat
echo "Care to play a game? Try to guess how many files are in the directory."
correct=1 #arbitrary tracker variable

while [[ $correct = 1 ]]
do
  echo "Make a guess:"
  read guess #User input variable
  if [[ $guess -gt $directorywc ]]
  then
    echo "Your guess was too high."
  elif [[ $guess -lt $directorywc ]]
  then
    echo "Your guess was too low."
  else
    echo "Congratulations! You have guessed correctly."
    let correct=$correct-1 #Breaks out of while loop, correctly ending game. Could be set to any value other than 1
  fi
done
#ended game
