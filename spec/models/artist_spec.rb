require 'rails_helper'

RSpec.describe Artist do
  it {should have_many :songs}

  describe 'instance methods' do
    describe '#average_song_length' do
      before :each do
        @vhalen = Artist.create!(name: 'Van Halen')
        @jump = @vhalen.songs.create!(title: 'Jump', length: 422, play_count: 44232)
        @panama = @vhalen.songs.create!(title: 'Panama', length: 357, play_count: 66329)
      end

      it 'returns the average song length' do
        expect(@vhalen.average_song_length.round(2)).to eq(389.5)


      end
    end
  end
end