require 'spec_helper'
RSpec.feature "attack player 2", :type => :feature do
  scenario "player 1 wants to attack player 2" do
    sign_in_and_play
    click_button("Attack!")
    expect(page).to have_content("Elizabeth 50/60")
  end
end
