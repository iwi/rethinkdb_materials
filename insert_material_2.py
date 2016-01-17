import rethinkdb as r

conn = r.connect(host = "db", port = "28015")

materials = r.db('test').table('materials')

materials.insert({
   "name": "Buenos días, buenos días", 
   "material": "Canción", 
   "ubicación": {"electrónica" : "~/Materiales/buenos_dias.mp3"},
   "score_100": 20,
   "Comentarios": "Bla bla blue",
   "Target": "Reception",
   "Usado con -- año" : ["Reception -- 2014/15", "Reception -- 2013/14"]
}).run(conn)
