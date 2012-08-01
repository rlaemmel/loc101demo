#
# Perform make
# while using variable "root"
# to point to contributions directory.
#
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
	$(error root is undefined)
else
	@echo Seaching files in ${root}.
endif

# Remove derived CSV files
clean:
	rm -f *.csv
