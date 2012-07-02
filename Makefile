
all: test
test: parser.js
	java -jar js.jar -debug $<

.jsy.js:
	kmyacc $<

.SUFFIXES: .jsy .js

