feature 'Player 2 hit points' do
    scenario 'I can see player 2 hit points' do
        visit('/play')
        expect(page).to have_content 'Player 2 hit points: 10'
    end
end

# WHY REPEATING PRVIOUS STEP TO FILL IN
# feature 'View hit points' do
#     scenario 'see Player 2 hit points' do
#       visit('/')
#       fill_in :player_1_name, with: 'Charlotte'
#       fill_in :player_2_name, with: 'Mittens'
#       click_button 'Submit'
#       expect(page).to have_content 'Mittens: 60HP'
#     end
#   end