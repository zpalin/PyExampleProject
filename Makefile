all: clean-pyc test

test:
	py.test tests

cov:
	coverage erase
	coverage run --source helloworld -m py.test tests
	coverage report

clean-pyc:
	find . | grep -E "(__pycache__|\.pyc|\.pyo$)" | xargs rm -rf

