README.md: guessinggame.sh
	touch README.md
	echo "# Peer Graded Assignment: Bash, Make, Git, and GitHub #" >> README.md
	echo "*By Benjamin Bonner*" >> README.md
	echo Make run at:  >> README.md
	date >> README.md
	echo "guessinggame.sh contains the following number of lines of code:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md
