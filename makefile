default:
	@cat makefile

view: test init
	python db_viewer.py

init:
	python initialize_database.py

test:
	pytest -vvx db_viewer.py

clean:
	rm aquarium.db

clean_view: clean init view

test_smoke:
	pytest -vvx -m smoketest db_viewer.py 