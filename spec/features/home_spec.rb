require 'rails_helper'

describe "visit the homepage" do
  before do
    visit '/power'
    puts "redirecting to powerhrg.com"
  end
  it "visits the powerhrg homepage and clicks video link" do
    expect(page).to have_content 'Power'
    expect(page).to have_css('.logo-left')
    expect(page).to have_css('.menu')
    expect(page).to have_css('.slide-primary.left')
    expect(page).to have_css('.slide-primary.right')
    expect(page).to have_css('#watch-btn-home')
    find('#watch-btn-home').click
    expect(page).to have_css('#homeiframe[src="https://player.vimeo.com/video/177559025"]')
  end
end
