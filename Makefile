# To be adjusted if 101repo is elsewhere
root=../101repo/contributions

all:
	./analysis.py ${root} .java
	./analysis.py ${root} .hs

# git push convenience
push:
	git commit -a
	git push
