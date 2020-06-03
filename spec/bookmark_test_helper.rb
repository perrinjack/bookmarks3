require 'pg'

def setup_and_insert_data
  connection = PG.connect(dbname: 'bookmark_manager_test')
  connection.exec "INSERT INTO bookmarks (url) VALUES('www.twitter.com')"
  connection.exec "INSERT INTO bookmarks (url) VALUES('www.makersacademy.com')"
  connection.exec "INSERT INTO bookmarks (url) VALUES('www.facebook.com')"
end
