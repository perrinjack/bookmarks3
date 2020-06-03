# frozen_string_literal: true

require './lib/bookmark'

describe Bookmark do
  describe '.all' do
    it 'allows a user to view their bookmarks' do
      setup_and_insert_data
      bookmarks = Bookmark.all
      expect(bookmarks).to include 'Twitter'
      expect(bookmarks).to include 'Makers'
      expect(bookmarks).to include 'Facebook'
    end
  end

 describe '#create' do
   it 'allows the user to enter a new bookmark' do
     setup_and_insert_data
     Bookmark.create("www.instagram.co.uk",'Instagram')
     expect(Bookmark.all).to include "Instagram"
   end
 end
end
