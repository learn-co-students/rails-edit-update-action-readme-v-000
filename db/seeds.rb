# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Article.create(title: 'Title one', description: 'First article description')
Article.create(title: 'Title two', description: 'Second article description')
Article.create(title: 'Title thre', description: 'Third article description')
