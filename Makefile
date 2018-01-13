.PHONY: all compile watch release

all: compile release

watch:
	compass watch

compile:
	compass compile

release:
	mkdir -p build
	cp -r img stylesheets build
	cp erlang_cheatsheet.html build/index.html
