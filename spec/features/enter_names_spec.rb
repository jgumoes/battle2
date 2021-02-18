
feature 'Enter names' do
    scenario 'submitting names' do
        visit('/')
        fill_in :player_1_name, with: 'Sargon of Akkad'
        fill_in :player_2_name, with: 'Xerxes'
        click_button 'Submit'
        expect(page).to have_content 'Sargon of Akkad vs. Xerxes'
    end
end