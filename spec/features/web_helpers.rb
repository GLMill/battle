def sign_in_and_play 
    visit('/')
    fill_in :player_1, with: 'Pikachu'
    fill_in :player_2, with: 'Charizard'
    click_button 'Fight!'
end

def attack_player_till_final_blow
    18.times{
    click_link 'Attack'
    click_link 'playon'
    }
end