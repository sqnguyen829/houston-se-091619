require 'sqlite3'
require 'pry'


db = SQLite3::Database.new('chinook.db')

id = 3
name = "VS"

db.execute(' UPDATE fans SET name = ? WHERE id=?', name, id)


# binding.pry
# 0