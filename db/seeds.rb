# This will delete any existing rows from the Dish and User tables
# so you can run the seed file multiple times without having duplicate entries in your database
puts "Deleting old data..."
Rating.destroy_all
Dish.destroy_all
User.destroy_all


puts "Creating users..."
user1 = User.create(name: Faker::Name.name)
user2 = User.create(name: Faker::Name.name)
user3 = User.create(name: Faker::Name.name)
# you = User.create(name: "Feel Free To Change This To Your Name")


puts "Creating dishes..."
dish1 = Dish.create(name: "Pancakes", intended_to_be: "Sweet", current_price: 10.00)
dish2 = Dish.create(name: "Vegan Pasta", intended_to_be: "Spicy", current_price: 8.88)




puts "Creating ratings..."
# *****************************************************************
# * TODO: create ratings! Remember, a rating belongs to a dishes  *
# * and a rating belongs to an user.                              *
# *****************************************************************
# Create Ratings Here
Rating.create(
    score: 4, 
    reason: "tasty", 
    recommended_price: 9.99, 
    user_id: user1.id,
    dish_id: dish1.id
    )

Rating.create(
    score: 5, 
    reason: "yum", 
    recommended_price: 12, 
    user_id: user2.id,
    dish_id: dish2.id
    )

Rating.create(
    score: 2, 
    reason: "yum", 
    recommended_price: 3, 
    user_id: user3.id,
    dish_id: dish2.id
    )




puts "🌱 Seeding done! 🌱

    ✨👏🏾👏🏾👏🏾✨
    If You're Reading This: Your're Doing Great! 
    ✨🙌🏾🙏🏾🙌🏾✨


"