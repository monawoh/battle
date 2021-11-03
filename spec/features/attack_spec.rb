feature 'attacking players' do
    scenario 'Player 1 attack player 2 and get confirmation' do
      sign_in_and_play 
      click_link 'Attack'
      expect(page).to have_content 'Monaliza attacked Adam'
    end
  end

 