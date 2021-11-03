# feature 'Player 2 hit points' do
#     scenario 'I can see player 2 hit points' do
#         visit('/play')
#         expect(page).to have_content 'Player 2 hit points: 10'
#     end
# end


feature 'View hit points' do
    scenario 'see Player 2 hit points' do
      sign_in_and_play 
      expect(page).to have_content 'Adam hit points: 10'
    end
  end