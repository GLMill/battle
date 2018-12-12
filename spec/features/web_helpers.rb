def sign_in_and_play 
    visit('/')
    fill_in :player_1, with: 'Pikachu'
    fill_in :player_2, with: 'Charizard'
    click_button 'Fight!'
end