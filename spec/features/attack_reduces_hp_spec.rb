feature "attack reduces HP" do
    let(:start_hp) { 100 }
    let(:attack_dammage){ 10 }

    scenario "on attack from play view a player should recieve a confirmation that they have attacked a user" do
      sign_in_and_play
      click_link 'Attack'
      expect(page).to have_content("Player_2 HP: #{start_hp - attack_dammage}")
    end
  end