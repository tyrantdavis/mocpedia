require 'random_data'


admin = User.new(
username: "admin",
name: "Admin User",
email: "admin@doupediaapp.com",
role: 2,
password: "123123",
password_confirmation: "123123"
)
admin.save!
admin.skip_confirmation!


premi = User.new(
username: "premiumuser",
name: "Premium",
email: "primo@example.com",
role: 1,
password: "password",
password_confirmation: "password"
)
premi.save!
premi.skip_confirmation!


52.times do
    user = User.new(
        username: RandomData.random_username,
        name: RandomData.random_name,
        email: RandomData.random_email,
        password: "password",
        password_confirmation: "password"
        )
    user.save!
    user.skip_confirmation!
end

users = User.all

52.times do
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
