feature 'attack' do
    scenario 'player 1 attacks player 2' do
        sign_in_and_play
        click_button 'Attack'
        expect(page).to have_content 'Sargon of Akkad attacked Xerxes'
    end
    scenario 'when player 1 attacks player 2 recieves damage' do
        sign_in_and_play
        click_button 'Attack'
        expect(page).to have_content 'Xerxes 50 HP'
    end

end
