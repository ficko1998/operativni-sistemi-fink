README.md:
	touch README.md
	printf "Guessing Game \n" > README.md
	printf "Created on " >> README.md
	date >> README.md
	printf "Number of lines is " >>  README.md
	wc -l guessinggame.sh | cut -d' ' -f1  >> README.md

