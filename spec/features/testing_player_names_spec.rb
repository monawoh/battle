feature 'Testing player names are added' do
  scenario 'Can input names in form and post to new page' do
    visit('/')
    fill_in :player_one, with: 'Monaliza'
    fill_in :player_two, with: 'Adam'
    click_button 'Submit'
    expect(page).to have_content 'Monaliza VS Adam'
  end
end