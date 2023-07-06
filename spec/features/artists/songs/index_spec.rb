# As a user
# When I visit an Artist's Songs index
# Then I see the titles all of that Artist's Songs
# And I see that each title is a link to the songs show page

require 'rails_helper'

RSpec.describe 'Artists songs index' do
  it 'shows all of the titles of the songs for the artist' do
    vhalen = Artist.create!(name: 'Van Halen')
    jump = vhalen.songs.create!(title: 'Jump', length: 422, play_count: 44232)
    panama = vhalen.songs.create!(title: 'Panama', length: 357, play_count: 66329)

    visit "/artists/#{vhalen.id}/songs"

    expect(page).to have_content(jump.title)
    expect(page).to have_content(panama.title)
  end

  it 'links to each songs show page'


end