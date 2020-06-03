# frozen_string_literal: true

require 'pg'
class Bookmark
  attr_reader :urls , :titles
  def self.all
    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    @urls = connection.exec('SELECT * FROM bookmarks') do |result|
      result.map { |row| row["url"]}
      
      @titles = connection.exec('SELECT * FROM bookmarks') do |result|
        result.map { |row| row["title"]}
      end

      
    end
  end
  def self.create(url, title)
    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
      connection.exec "INSERT INTO bookmarks (url, title) VALUES('#{url}','#{title}')"
  end
end
