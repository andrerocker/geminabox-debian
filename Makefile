bootstrap:
	docker build -t builder/locainabox locaweb/containers/builder
	docker build -t runtime/locainabox locaweb/containers/runtime

builder:
	docker run \
                -v $(CURDIR):/source \
                -v $(CURDIR)/locaweb/scripts:/scripts \
                -v $(CURDIR)/locaweb/tmp/build:/build \
                -v $(CURDIR)/locaweb/tmp/cache:/opt/source/vendor/bundle \
                -i -t builder/locainabox /scripts/build

runtime:
	docker run \
                -v $(CURDIR)/locaweb/scripts:/scripts \
                -v $(CURDIR)/locaweb/tmp/build:/build \
                -i -t builder/locainabox /bin/bash
