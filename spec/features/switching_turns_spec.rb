require 'spec_helper'
RSpec.feature "Switching turns" do
  scenario "player_1 attacks player_2; player_2 attacks player_1"do
    sign_in_and_play
    click_button("Attack!")
    click_button("Attack!")
    expect(page).to have_content("Jack 50/60")
    expect(page).to have_content("Elizabeth 50/60")
  end
end
