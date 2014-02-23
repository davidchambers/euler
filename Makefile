SCRIPTS = $(sort $(shell find . -type f -name 'euler*.*'))
HS_EXECS = $(patsubst %.hs,%,$(filter %.hs,$(SCRIPTS)))


.PHONY: all
all: $(HS_EXECS)

%: %.hs
	ghc -o $@ $<


.PHONY: clean
clean:
	rm -f -- $(HS_EXECS)


.PHONY: test test-coffee test-hs test-js test-pl test-py
test: test-coffee test-hs test-js test-pl test-py
	@echo

test-coffee:
	@echo
	@echo Testing CoffeeScript...
	@echo
	@$(foreach file,$(filter %.coffee,$(SCRIPTS)),printf '  %s: ' $(file); coffee $(file);)

test-hs: $(HS_EXECS)
	@echo
	@echo Testing Haskell...
	@echo
	@$(foreach file,$(HS_EXECS),printf '  %s: ' $(file); $(file);)

test-js:
	@echo
	@echo Testing JavaScript...
	@echo
	@$(foreach file,$(filter %.js,$(SCRIPTS)),printf '  %s: ' $(file); node $(file);)

test-pl:
	@echo
	@echo Testing Perl...
	@echo
	@$(foreach file,$(filter %.pl,$(SCRIPTS)),printf '  %s: ' $(file); perl $(file);)

test-py:
	@echo
	@echo Testing Python...
	@echo
	@$(foreach file,$(filter %.py,$(SCRIPTS)),printf '  %s: ' $(file); python $(file);)
