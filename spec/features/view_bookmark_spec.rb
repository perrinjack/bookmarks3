



feature 'viewing bookmark manager' do
  scenario 'user can view the bookmark manager' do
    visit '/'
    expect(page).to have_content 'bookmark manager'
  end
end
