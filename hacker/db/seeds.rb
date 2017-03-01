5.times do
	User.create!({first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, username: Faker::Internet.user_name, password: 'password'})
end

10.times do 
	Post.create!({title: Faker::Lorem.sentence, body: Faker::Lorem.sentences, author_id: Faker::Number.between(1, 5)})
end

15.times do
	Comment.create!({content: Faker::Lorem.sentences, post_id: Faker::Number.between(1, 10), commenter_id: Faker::Number.between(1, 5)})
end