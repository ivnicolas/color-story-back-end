# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
codes = [35519, 22199, 32307]
3.times do

    User.create(
    name: Faker::Name.name ,
    code: codes.sample 
    )

end


ColorStory.create([{
    color_code: "#a5d12c",
    title: "Her Favorite Sweater", 
    description: " When we parted way, she told me to keep the sweater. So that even if we were apart, we would still be together.", 
    likes: 2 ,
    user: User.all.sample
  },
  {
    color_code: "#9aadab",
    title: "Final Moments" , 
    description: " When we were spending the last few minutes together, I was gazing out the window and caught a glimpse of the sky...she was crying to.", 
    likes: 3 ,
    user: User.all.sample
  },
  {
    color_code: "#a336d6",
    title: "The Bridesmaid Dress" , 
    description: "In true bridezilla fashion, she chose the color that no one looked good in. I burned the dress", 
    likes: 14 ,
    user: User.all.sample
  },
  {
    color_code: "#bd9333",
    title: "Kenyan Beach House" , 
    description: " Light sands. Tan house. Calm beach water. Looking all around me I see. Brothers and Sister. Sons and Daughter. 
    Many shades of brown. Far as the eye can see. I feel free. ",
    likes: 55 ,
    user: User.all.sample
  },
  {
    color_code: "#32d155",
    title: "St.Petersburgh Florida", 
    description:" When I was younger, my parents took us to Florida every summer. It was not my favorite trip. I hated the heat and the places we stayed at never had A/C. However, one summer 
    our family went to St.Peterburgh. A random location. At the motel we stayed at there was a receptionist who wore this teal eyeshadow everyday. It didn't matter
    if it matched with her outfit or not. And each time I see that teal, I think of the summer we spent in St.Petersburgh Florida" , 
    likes: 3 ,
    user: User.all.sample
  },
  ])

