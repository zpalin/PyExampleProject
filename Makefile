all: clean test

test:
	py.test tests

cov:
	coverage erase
	coverage run --source helloworld -m py.test tests
	coverage report

clean:
	find . | grep -E "(__pycache__|\.pyc|\.pyo)" | xargs rm -rf

