function guessinggame {

	echo "Guess the number of files in this folder !"
	echo "Enter your guess: "
	read guessn
	files=$(find . -type f | wc -l)
	while [[ $guessn -ne $files ]]
	do

	 if [[ $guessn -gt $files ]]
	 then
	  echo "Too High!"
	 else
	  echo "Too Low!"
	 fi

     echo "Keep trying!"
	 echo "Enter your guess again : "
	 read guessn

 	done
	echo "**********!!!!! Congratulation !!!!!**********"
}

guessinggame