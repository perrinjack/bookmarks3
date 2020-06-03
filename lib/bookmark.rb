# frozen_string_literal: true

require 'pg'
class Bookmark
  attr_reader :urls
  def self.all
    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
    return @urls = connection.exec('SELECT * FROM bookmarks') do |result|
      result.map { |row| row["url"]}
    end
  end
  def self.create(url)
    if ENV['RACK_ENV'] == 'test'
      connection = PG.connect(dbname: 'bookmark_manager_test')
    else
      connection = PG.connect(dbname: 'bookmark_manager')
    end
      connection.exec "INSERT INTO bookmarks (url) VALUES('#{url}')"
  end
end
