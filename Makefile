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

