
.PHONY: install docs

install:
	pip install .

install_dev:
	# https://stackoverflow.com/a/28842733
	pip install -e .[dev]

docs: install_dev
	@cd doc_sources && make html

style: install_dev
	black flexdata
