require 'rails_helper'

RSpec.describe 'the songs show page' do
  it 'displays the song title' do
    artist = Artist.create!(name: 'The Big Bopper')
    song = artist.songs.create!(title: "Happy Days", length: 208, play_count: 103)
    song_2 = artist.songs.create!(title: "Moonlight", length: 245, play_count: 97)

    visit "/songs/#{song.id}"
    # localhost:3000/songs/1

    expect(page).to have_content(song.title)
    expect(page).to_not have_content(song_2.title)
  end

  it 'displays the name of hte artist of the song' do
    artist = Artist.create!(name: 'The Big Bopper')
    song = artist.songs.create!(title: "Happy Days", length: 208, play_count: 103)
    song_2 = artist.songs.create!(title: "Moonlight", length: 245, play_count: 97)

    visit "/songs/#{song.id}"
    save_and_open_page
    expect(page).to have_content(artist.name)
  end
end