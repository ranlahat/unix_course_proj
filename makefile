all: README.md

README.md: 
	touch README.md
	echo "#Project Guessing Game#" > README.md
	echo "Make time:" *$$(date)* >> README.md
	echo "Number of lines:" **$$(cat guessinggame.sh | wc -l)** >> README.md

clean:
	rm README.md
