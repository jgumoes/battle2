
def sign_in_and_play
    visit('/')
    fill_in :player_1_name, with: 'Sargon of Akkad'
    fill_in :player_2_name, with: 'Xerxes'
    click_button 'Submit'
end