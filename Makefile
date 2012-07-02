
all: test
test: parser.js
	java -jar js.jar $<

.jsy.js:
	kmyacc $<

.SUFFIXES: .jsy .js

