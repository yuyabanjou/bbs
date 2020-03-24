# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create!(
	[
		{
			email: 'test@test',
			password: '111111',
			name: 'test'
		},
		{
			email: 'test1@test1',
			password: '111111',
			name: 'test1'
		},
		{
			email: 'tanaka@tanaka',
			password: '111111',
			name: 'tanaka'
		}
	]
)

Item.create!(
	[
		{
			user_id: 1,
			title: 'test',
			text: 'test'
		},
		{
			user_id: 2,
			title: 'test2',
			text: 'test2'
		},
		{
			user_id: 1,
			title: 'testtest',
			text: 'testtest'
		}
	]
)