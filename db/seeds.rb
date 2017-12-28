User.destroy_all

User.create(email: 'test@user.com', password: 'password',
  confirmed_at: Time.now
)

puts "Seed finished"
