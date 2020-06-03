feature 'adding a new bookmark' do
  scenario 'A user can add a new bookmark to the bookmark manager via a form' do
    visit '/bookmarks'

    fill_in :url, with: 'www.google.co.uk'
    fill_in :title, with: 'Google'
    click_button("Add")
    expect(page).to have_content('Google')

  end
end
