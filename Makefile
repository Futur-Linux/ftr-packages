.PHONY: all package update clean

all: clean packages update

packages:
	cd actual/x86_64/ && ./build_package.sh packages 1.0

update:
	git add .
	git commit -m "Update"
	git push -u origin main
			
clean:
	rm -f actual/x86_64/packages.txt


	
