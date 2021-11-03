feature 'attacking players' do
    scenario 'Player 1 attack player 2 and get confirmation' do
      sign_in_and_play 
      click_link 'Attack'
      expect(page).to have_content 'Monaliza attacked Adam'
    end
  end

  feature 'Attacking' do
    scenario 'attack while reduce hit points by 10' do
      sign_in_and_play 
      click_link 'Attack'
      click_link 'OK'
      expect(page).not_to have_content 'Adam hit points: 60'
      expect(page).to have_content 'Adam hit points: 50'
    end
  end