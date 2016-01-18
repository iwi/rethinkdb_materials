db-install:
	@docker run -d --name db --net illa -p 8080:8080 rethinkdb

db-create:
	@docker run --rm -it --net illa -v $(PWD):/source iwi/python_db python create_db_test.py

db-create_table_materials:
	@docker run --rm -it --net illa -v $(PWD):/source iwi/python_db python create_table_materials.py

nw-create:
	@docker network create illa

db-clean:
	@docker rm -vf db

count:
	@docker run --rm -it --net illa -v $(PWD):/source iwi/python_db python test.py

insert:
	@docker run --rm -it --net illa -v $(PWD):/source iwi/python_db python insert_material.py

insert2:
	@docker run --rm -it --net illa -v $(PWD):/source iwi/python_db python insert_material_2.py
