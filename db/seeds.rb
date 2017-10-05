 require 'random_data'
 
  5.times do
   User.create!(
 # #3
   name:     RandomData.random_name,
   email:    RandomData.random_email,
   password: RandomData.random_sentence
   )
 end
 users = User.all
 
 15.times do
   Topic.create!(
     name:         RandomData.random_sentence,
     description:  RandomData.random_paragraph
   )
 end
 topics = Topic.all 


# 50.times do
#    SponsoredPost.create!(
#     topic:  topics.sample,
#     title:  RandomData.random_sentence,
#     body:   RandomData.random_paragraph,
#     price:  100
#     )
#   end

 50.times do

   Post.create!(
     user:   users.sample,
     topic:  topics.sample,
     title:  RandomData.random_sentence,
     body:   RandomData.random_paragraph
   )
 end
 
 posts = Post.all

 100.times do
   Comment.create!(
     post: posts.sample,
     body: RandomData.random_paragraph
   )
 end
 
  100.times do
   Question.create!(
     title: RandomData.random_sentence,
     body: RandomData.random_paragraph,
     resolved: false
   )
 end
 
 Post.find_or_create_by(title: "This is the unique post I created", body: "This is the unique body that I created")

 user = User.first
 user.update_attributes!(
   email: 'alex.erling@gmail.com', # replace this with your personal email
   password: 'helloworld'
 )


 
 puts "Seed finished"
 puts "#{User.count} users created"
 puts "#{Topic.count} topics created"
 puts "#{Post.count} posts created"
 puts "#{Comment.count} comments created"
 puts "#{Question.count} questions created"
 
