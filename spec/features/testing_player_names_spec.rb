feature 'Testing player names are added' do
  scenario 'Can input names in form and post to new page' do
    sign_in_and_play
    expect(page).to have_content 'Monaliza VS Adam'
  end
end