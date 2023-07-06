# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

@vhalen = Artist.create!(name: 'Van Halen')
@jump = @vhalen.songs.create!(title: 'Jump', length: 422, play_count: 44232)
@panama = @vhalen.songs.create!(title: 'Panama', length: 357, play_count: 66329)