import rethinkdb as r

conn = r.connect(host = "db", port = "28015")

print(r.db('test').table('materials').count().run(conn))

