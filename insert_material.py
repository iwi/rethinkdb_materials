import rethinkdb as r

conn = r.connect(host = "db", port = "28015")

materials = r.db('test').table('materials')

materials.insert({
   "name": "Yo tengo, tú tienes", 
   "material": "Juego", 
   "ubicación": {"física" : "Cajón derecho mueble TV",
                 "electrónica" : "~/Materiales/yo_tengo.odt"},
   "score_100": 98,
   "Comentarios": "Bla bla bla",
   "Target": ["Year 2", "Year 3", "Year 4", "Year 5", "Adultos"],
   "Usado con -- año" : "Year 5 -- 2014/15"
}).run(conn)
