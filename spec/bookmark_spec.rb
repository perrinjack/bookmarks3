# frozen_string_literal: true

require './lib/bookmark'

describe Bookmark do
  describe '.all' do
    it 'allows a user to view their bookmarks' do
      connection = PG.connect(dbname: 'bookmark_manager_test')
      connection.exec "INSERT INTO bookmarks VALUES(1,'www.twitter.com')"
      bookmarks = Bookmark.all

      expect(bookmarks).to include 'www.twitter.com'
      
    end
  end
end
