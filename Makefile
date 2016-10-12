all: clean test

test:
	py.test

cov: coverage
coverage:
	coverage erase
	coverage run --source helloworld -m pytest
	coverage report

clean:
	find . | grep -E "(__pycache__|\.pyc|\.pyo)" | xargs rm -rf

