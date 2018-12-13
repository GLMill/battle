feature "continu playing button" do
    scenario "should take us back to the play page" do
      visit '/attack'
      click_link 'playon'
      expect(page).to have_css('#attack')
    end
  end
   