DICTIONARIES=$(shell find . -name '*.txt')

sort:
	for dict in $(DICTIONARIES); do \
		sort -u -o $$dict $$dict; \
	done
