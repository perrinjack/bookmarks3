# frozen_string_literal: true

require './lib/bookmark'

describe Bookmark do
  describe '.all' do
    it 'allows a user to view their bookmarks' do
      # expect(subject).to respond_to(:all)
      bookmarks = Bookmark.all

      expect(bookmarks).to include 'www.bbc.co.uk'
      expect(bookmarks).to include 'www.skysports.co.uk'
      expect(bookmarks).to include 'https://makers.tech/'
    end
  end
end
