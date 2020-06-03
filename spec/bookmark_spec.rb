# frozen_string_literal: true

require './lib/bookmark'

describe Bookmark do
  describe '.all' do
    it 'allows a user to view their bookmarks' do
      setup_and_insert_data
      bookmarks = Bookmark.all
      expect(bookmarks).to include 'www.twitter.com'
      expect(bookmarks).to include 'www.makersacademy.com'
      expect(bookmarks).to include 'www.facebook.com'
    end
  end

 describe '#create' do
   it 'allows the user to enter a new bookmark' do
     setup_and_insert_data
     Bookmark.create("www.instagram.co.uk")
     expect(Bookmark.all).to include "www.instagram.co.uk"
   end
 end
end
