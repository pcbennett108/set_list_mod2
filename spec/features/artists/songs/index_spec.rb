# As a user
# When I visit an Artist's Songs index
# Then I see the titles all of that Artist's Songs
# And I see that each title is a link to the songs show page

require 'rails_helper'

RSpec.describe 'Artists songs index' do
  before :each do
    @vhalen = Artist.create!(name: 'Van Halen')
    @jump = @vhalen.songs.create!(title: 'Jump', length: 422, play_count: 44232)
    @panama = @vhalen.songs.create!(title: 'Panama', length: 357, play_count: 66329)
  end

  it 'shows all of the titles of the songs for the artist' do

    visit "/artists/#{@vhalen.id}/songs"
    
    expect(page).to have_content(@jump.title)
    expect(page).to have_content(@panama.title)
  end
  
  it 'links to each songs show page' do
    visit "/artists/#{@vhalen.id}/songs"
    
    click_on @jump.title
    
    expect(current_path).to eq("/songs/#{@jump.id}")
    
  end
  
  it 'shows the average song length for the artist' do
    visit "/artists/#{@vhalen.id}/songs"
    expect(page).to have_content("Average Song Length for Van Halen: 389.5")



  end


end