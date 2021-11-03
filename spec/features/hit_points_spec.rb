feature 'View hit points' do
    scenario 'see Player 2s hit points' do
      sign_in_and_play 
      expect(page).to have_content 'Adam hit points: 60'
    end
  end

  