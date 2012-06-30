
all: parser.js

.jsy.js:
	kmyacc $<

.SUFFIXES: .jsy .js

