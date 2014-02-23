SCRIPTS = $(sort $(shell find . -type f -name 'euler*.*'))


.PHONY: all
all:


.PHONY: test test-coffee test-js test-py
test: test-coffee test-js test-py
	@echo

test-coffee:
	@echo
	@echo Testing CoffeeScript...
	@echo
	@$(foreach file,$(filter %.coffee,$(SCRIPTS)),printf '  %s: ' $(file); coffee $(file);)

test-js:
	@echo
	@echo Testing JavaScript...
	@echo
	@$(foreach file,$(filter %.js,$(SCRIPTS)),printf '  %s: ' $(file); node $(file);)

test-py:
	@echo
	@echo Testing Python...
	@echo
	@$(foreach file,$(filter %.py,$(SCRIPTS)),printf '  %s: ' $(file); python $(file);)
