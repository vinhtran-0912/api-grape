20.times do |n|
  name  = Faker::Name.name
  User.create!(
    name: name,
    date_of_birth: "1997-12-09",
    gender: 0,
    password: "123123",
    password_confirmation: "123123"
  )
end
