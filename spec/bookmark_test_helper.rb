require 'pg'

def setup_and_insert_data
  connection = PG.connect(dbname: 'bookmark_manager_test')
  connection.exec "INSERT INTO bookmarks VALUES(1,'www.twitter.com')"
  connection.exec "INSERT INTO bookmarks VALUES(2,'www.makersacademy.com')"
  connection.exec "INSERT INTO bookmarks VALUES(3,'www.facebook.com')"
end
