# frozen_string_literal: true
require 'pg'
feature 'viewing bookmarks' do
  scenario 'A user can view the bookmark manager' do
    visit '/'
    expect(page).to have_content 'Bookmark Manager'
  end

  scenario 'A user can view their bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec "INSERT INTO bookmarks VALUES(1,'www.twitter.com')"
    visit '/bookmarks'
    expect(page).to have_content 'www.twitter.com'
    
  
  end
end
