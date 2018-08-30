# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

post_list = [
  [ "How to Type", "Tips on how to type faster." ],
  [ "Donald Trump Predictions", "What will he tweet next?" ],
  [ "5 Ways to Look Better", "Here is my clickbait article..." ],
  [ "Where is Carmen San Diego?", "Is she even around anymore?" ]
]

post_list.each do |post|
  Post.create( :title => post[0], :description => post[1] )
end
