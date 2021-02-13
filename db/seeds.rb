50.times do |n|
  name = Faker::FunnyName.name
  nickname = Faker::JapaneseMedia::DragonBall.character
  email = Faker::Internet.email
  image = Faker::Avatar.image
  password = "password"
  User.create!(name: name,
               nickname: nickname,
               email: email,
               image: image,
               password: password,
               )
end
