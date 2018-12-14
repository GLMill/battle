feature "if a player is dead the game should take us to gameover page" do
    let(:start_hp) { 100 }
    let(:attack_dammage){ 10 }

    scenario "once a player is dead a gameover menu should appear" do
      sign_in_and_play
      attack_player_till_final_blow
      click_link "Attack"
      expect(page).to have_content("game over!")
    end
  end