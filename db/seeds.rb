# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user1 = User.create(:username => "Khoi")
user1 = User.create(:username => "Jenn")
image1 = Image.create(:img_url => "https://fbcdn-sphotos-c-a.akamaihd.net/hphotos-ak-xap1/v/t1.0-9/1489192_737270219689456_2157263760467371594_n.jpg?oh=3a0b6ac95e0aff40379cb222ed75b79a&oe=54FA6871&__gda__=1426523960_03ef735dcc4ab9b888572c1abda9e46d", :year => 2006,:location_id => 1,:user_id => 1)
location1 = Location.create(:name => "bushwick livestream", :address => "82 Bleecker Street, Brooklyn, NY 11221, USA")