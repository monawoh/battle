def sign_in_and_play
    visit('/')
    fill_in :player_one, with: 'Monaliza'
    fill_in :player_two, with: 'Adam'
    click_button 'Submit'
end