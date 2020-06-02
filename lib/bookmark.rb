# frozen_string_literal: true

require 'pg'
class Bookmark
  attr_reader :urls
  def self.all
    connection = PG.connect(dbname: 'bookmark_manager')
    @urls = connection.exec('SELECT * FROM bookmarks') do |result|
      result.map { |row| row["url"]}
   
    end
  end
end
