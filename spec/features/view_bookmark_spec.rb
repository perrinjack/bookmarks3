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
    expect(page).to have_content 'Twitter'
    expect(page).to have_content 'Makers'
    expect(page).to have_content 'Facebook'
  end
end
