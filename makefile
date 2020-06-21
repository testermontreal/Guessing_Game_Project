all: README.md

README.md: guessinggame.sh
	echo "## The Unix Workbench course assignment" > README.md
	echo "" >> README.md
	echo Created on $$(date +%D) at $$(date +%H:%M:%S) >> README.md
	echo "" >> README.md
	echo "Total number line of code in guessinggame.sh are:" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

clean:
	rm README.md
