# frozen_string_literal: true
# require 'pg'
feature 'viewing bookmarks' do
  scenario 'A user can view the bookmark manager' do
    visit '/'
    expect(page).to have_content 'Bookmark Manager'
  end

  scenario 'A user can view their bookmarks' do
    setup_and_insert_data
    visit '/bookmarks'
    expect(page).to have_content 'www.twitter.com'
    expect(page).to have_content 'www.makersacademy.com'
    expect(page).to have_content 'www.facebook.com'
  end
end
