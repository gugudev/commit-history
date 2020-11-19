require 'rails_helper'

RSpec.describe "Home", :vcr, type: :feature do

  it "#index" do
    visit root_path

    expect(page).to have_content "List of commits of"
  end

end
