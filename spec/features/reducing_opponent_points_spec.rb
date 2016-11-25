require 'spec_helper'
RSpec.feature "reduce player 2 hit points by 10", :type => :feature do
  scenario "player 1 attacks player 2 and see hit points reduce by 10" do
    sign_in_and_play
    click_button("Attack!")
    expect(page).not_to have_content("Elizabeth 60/60")
    expect(page).to have_content("Elizabeth 50/60")
  end
end
