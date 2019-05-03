.PHONY: all compile watch release

all: release

watch:
	compass watch

compile:
	compass compile

release: compile
	mkdir -p build
	cp -r img stylesheets build
	# Generate HTML file
	./build_erlang_cheatsheet.sh
