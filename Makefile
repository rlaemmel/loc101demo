#
# Variable "root" must point to root directory with files of interest.
# Set the variable when running "make".
# For instance:
# make root=../../101repo/contributions
#
all:
	make check-root
	src/listLOC.sh ${root} .hs Haskell.csv
	src/listLOC.sh ${root} .java Java.csv
	src/median.py Haskell.csv
	src/median.py Java.csv
	make clean

# Check that root is set
check-root:
ifndef root
	$(error No "root" directory defined)
else
	@echo Seaching files in ${root}.
endif


# git push convenience
push:
	git commit -a
	git push

# Remove derived CSV files
clean:
	rm -f *.csv
