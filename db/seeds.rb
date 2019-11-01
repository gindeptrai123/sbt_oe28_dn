User.create!(user_name: "huydz",
             email: "huy@gmal.com",
             password: "123456",
             password_confirmation: "123456",
             full_name: "Quang Huy",
             role: 0,
             gender: true)
User.create!(user_name: "renk",
             email: "nguyen@gmal.com",
             password: "123123",
             password_confirmation: "123123",
             full_name: "Hoang Nguyen",
             role: 0,
             gender: true)
Category.create!(name: "news")
Category.create!(name: "food")
Category.create!(name: "place")
