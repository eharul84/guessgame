README.md:
	
	touch README.md

	echo "## Unix Workbench Coursera Course - Guessing Game Project" >> README.md
	echo "" >> README.md
	eval echo "Generated on $(shell date)" >> README.md
	echo "" >> README.md
	echo "Number of lines in guessgame.sh: `wc -l guessgame.sh | egrep -o '[0-9]+'`" >> README.md

clean:
	rm README.md
