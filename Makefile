#CONSTANTS
PYTHON=python

#TARGETS
.PHONY : help
help : Makefile
	@sed -n 's/^##//p' $<

##wheel: Build the wheel for distribution
.PHONY: wheel 
wheel:
	rm -rf workstation.egg-info/
	rm -rf dist/ build/
	$(PYTHON) setup.py bdist_wheel


##installlocal: install locally for testing
.PHONY: installlocal
installlocal:
	sudo rm -rf workstation.egg-info/
	sudo rm -rf dist/ build/
	sudo $(PYTHON) setup.py install


# useful reference for make: https://swcarpentry.github.io/make-novice/reference
