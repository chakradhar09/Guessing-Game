# Makefile for guessinggame.sh project

all: README.md

README.md: guessinggame.sh
	@echo "Generating README.md..."
	@echo "# Guessing Game Project" > README.md
	@echo "" >> README.md
	@echo "This is a Bash script that prompts the user to guess the number of files in the current directory." >> README.md
	@echo "" >> README.md
	@echo "**Date and Time of Make**: $$(date)" >> README.md
	@echo "" >> README.md
	@echo "**Number of Lines in guessinggame.sh**: $$(wc -l < guessinggame.sh)" >> README.md

clean:
	rm -f README.md
