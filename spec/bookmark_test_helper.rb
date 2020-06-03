require 'pg'

def setup_and_insert_data
  connection = PG.connect(dbname: 'bookmark_manager_test')
  connection.exec "INSERT INTO bookmarks (url, title) VALUES('www.twitter.com', 'Twitter')"
  connection.exec "INSERT INTO bookmarks (url, title) VALUES('www.makersacademy.com', 'Makers')"
  connection.exec "INSERT INTO bookmarks (url, title) VALUES('www.facebook.com', 'Facebook')"
end
