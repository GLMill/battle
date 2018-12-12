feature "Enter names" do
  scenario "submitting names" do
    sign_in_and_play
    expect(page).to have_content('A wild Pikachu and Charizard appeared!')
  end
end
