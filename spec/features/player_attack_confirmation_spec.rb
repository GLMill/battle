feature "attack confirmations" do
    scenario "on attack a player should recieve a confirmation that they have attacked a user" do
      sign_in_and_play
      click_link 'Attack'
      expect(page).to have_content('attacked Player!')
    end
  end
  