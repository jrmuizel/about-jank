VERSION := $(shell grep "em:version" install.rdf | sed s/[^0-9.]//g)
aboutjank-$(VERSION).xpi: bootstrap.js install.rdf stylesheet.css
	zip aboutjank-$(VERSION).xpi bootstrap.js install.rdf stylesheet.css
