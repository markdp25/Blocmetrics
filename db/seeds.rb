require 'faker'

User.create(email: 'test@user.com', password: 'password',
  confirmed_at: Time.now
)

10.times do
	RegisteredApplication.create!(
		name: Faker::FamilyGuy.character,
		url: Faker::Internet.url,
		user: User.first
		)
end

20.times do
	Event.create!(
		name: Faker::FamilyGuy.location,
		registered_application: RegisteredApplication.first
		)
end



puts "Seed finished"
puts "#{RegisteredApplication.count} applications created"
puts "#{Event.count} events created"
