all: clean-pyc test

test:
	py.test tests

cov:
	coverage erase
	coverage run --source helloworld -m py.test tests
	coverage report

clean-pyc:
	find . -name '*.pyc' -exec rm -f {} +
	find . -name '*.pyo' -exec rm -f {} +
	find . -name '*~' -exec rm -f {} +
