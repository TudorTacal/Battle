require 'spec_helper'
RSpec.feature "Losing the game" do
  scenario "Player 2 reaches zero points and loses the game" do
    sign_in_and_play
    11.times { click_button("Attack!") }
    expect(page).to have_content("Elizabeth - you lost the game!")
  end
end
