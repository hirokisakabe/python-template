install:
	pipenv install --dev

code-analysis:
	pipenv run black --check
	pipenv run isort --check python_template/
	pipenv run pylint python_template
	pipenv run mypy .

test:
	pipenv run pytest
