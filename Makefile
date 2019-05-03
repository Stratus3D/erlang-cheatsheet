.PHONY: all compile watch release

all: compile release

watch:
	compass watch

compile:
	compass compile

release: compile
	mkdir -p build
	cp -r img stylesheets build
	asciidoctor -s -d book -o build/erlang_cheatsheet_content.html erlang_cheatsheet.adoc
	# Generate HTML file
	./build_erlang_cheatsheet.sh
