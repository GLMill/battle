
feature "viewing hitpoints" do
   
    context "after submitting names and landing on play page" do
        before {
            sign_in_and_play
        }
        let(:start_hp) { 100 }

        it 'displays both players HP' do
           
            expect(page).to have_content("Player_1 HP: #{start_hp}")
            expect(page).to have_content("Player_2 HP: #{start_hp}")
        end
    end
  end
  