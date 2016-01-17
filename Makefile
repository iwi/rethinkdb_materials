db-install:
	@docker run -d --name db -p 8080:8080 rethinkdb

db-create_table_materials:
	@docker run --rm -it --link db:db -v $(PWD):/source iwi/python_db python create_table_materials.py

docker run --rm -it --link db:db -v 

db-clean:
	@docker rm -vf db

count:
	@docker run --rm -it --link db:db -v $(PWD):/source iwi/python_db python test.py

insert:
	@docker run --rm -it --link db:db -v $(PWD):/source iwi/python_db python insert_material.py

insert2:
	@docker run --rm -it --link db:db -v $(PWD):/source iwi/python_db python insert_material_2.py
