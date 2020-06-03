feature 'adding a new bookmark' do
  scenario 'A user can add a new bookmark to the bookmark manager via a form' do
    visit '/bookmarks'

    fill_in :url, with: 'www.google.co.uk'
    click_button("Add")
    expect(page).to have_content('www.google.co.uk')

  end
end
