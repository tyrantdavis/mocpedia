require 'random_data'

puts "**  Seeding Database: seeding ***\n\n"

unless User.where(email: "admin@example.com").first
  User.create!(name: "Admin", email: 'admin@example.com',
          password: '123123',
          password_confirmation: '123123')

          puts "-- Created admin@example.com with password 123123\n"
end

            50.times do
              user = User.new(
              name: RandomData.random_name,
              email: RandomData.random_email,
              password: "password"
              ) 
    user.save!
  end

users = User.all

50.times do
    Wiki.create!(
        title: RandomData.random_sentence,
        body: RandomData.random_paragraph,
        private: false,
        user: users.sample
        )
end

wikis = Wiki.all

puts "Seed finished"
puts "#{users.count} users created"
puts "#{wikis.count} wikis created"
puts "\n**  Seeding Database: completed ***"
