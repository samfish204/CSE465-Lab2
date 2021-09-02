all: check

check: check-list 

clean:
	@rm -f $(OUTPUTS)
	@rm -f *.class
	@rm -f *.exe

# Scheme
list.output: list.scm 
	scheme --quiet < list.scm >list.output


# Make sure the output matches the expected output
check-list: list.output
	diff -y list.output list.expected
	@echo check-list -- Success!

update:
	git pull git@gitlab.csi.miamioh.edu:CSE465/femianjc/lab02.git master

submit:
	git commit -am "Final submission"
	git push