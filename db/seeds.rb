puts "Removing old data 💥"

User.destroy_all
ActiveDay.destroy_all
Activity.destroy_all

puts "Seeding users 👨‍👧‍👦"

u1 = User.create(username: "charlie", password: '123', name: "Charlie", location: "Colorado")
u2 = User.create(username: "csjarvis43", password: '123', name: "CJ", location: "Wyoming")
u3 = User.create(username: "dave0026", password: '123', name: "Dave", location: "New Mexico")
u4 = User.create(username: "steve1257", password: '123', name: "Steven", location: "Utah")

puts "Seeding active days 📆"

ad4 = ActiveDay.create(date: Date.new(2022,8,28), day_of_week: 'sunday', streak: 1, user_id: u1.id)
ad3 = ActiveDay.create(date: Date.new(2022,8,29), day_of_week: 'monday', streak: 2, user_id: u1.id)
ad2 = ActiveDay.create(date: Date.new(2022,8,30), day_of_week: 'tuesday', streak: 3, user_id: u1.id)
ad1 = ActiveDay.create(date: Date.new(2022,8,31), day_of_week: 'wednesday', streak: 4, user_id: u1.id)
ad6 = ActiveDay.create(date: Date.new(2022,8,30), day_of_week: 'tuesday', streak: 1, user_id: u2.id)
ad5 = ActiveDay.create(date: Date.new(2022,8,31), day_of_week: 'wednesday', streak: 2, user_id: u2.id)

puts "Seeding activities 🥇🥈🥉"

act1 = Activity.create(active_day_id: ad1.id, exercise_type: 'bike', activity_length: 93, calories: 1063, distance: 12.65, streak: 3, rating: 8, summary: "good")
act2 = Activity.create(active_day_id: ad1.id, exercise_type: 'run', activity_length: 73, calories: 1163, distance: 7.01, streak: 1, rating: 9, summary: "good")
act3 = Activity.create(active_day_id: ad2.id, exercise_type: 'bike', activity_length: 49, calories: 560, distance: 8.69, streak: 2, rating: 7, summary: "good")
act4 = Activity.create(active_day_id: ad3.id, exercise_type: 'bike', activity_length: 121, calories: 1383, distance: 18.25, streak: 1, rating: 6, summary: "good")
act5 = Activity.create(active_day_id: ad4.id, exercise_type: 'run', activity_length: 58, calories: 912, distance: 12.65, streak: 1, rating: 8, summary: "good")
act6 = Activity.create(active_day_id: ad5.id, exercise_type: 'hike', activity_length: 142, calories: 974, distance: 5.22, streak: 1, rating: 5, summary: "good")
act7 = Activity.create(active_day_id: ad6.id, exercise_type: 'ski', activity_length: 243, calories: 1667, distance: 25.37, streak: 1, rating: 9, summary: "good")
act8 = Activity.create(active_day_id: ad1.id, exercise_type: 'swim', activity_length: 45, calories: 309, distance: 12.65, streak: 1, rating: 3, summary: "good")
act9 = Activity.create(active_day_id: ad1.id, exercise_type: 'ski', activity_length: 342, calories: 2346, distance: 33.28, streak: 1, rating: 10, summary: "good")
act10 = Activity.create(active_day_id: ad1.id, exercise_type: 'hike', activity_length: 82, calories: 562, distance: 2.75, streak: 1, rating: 8, summary: "good")

# Bike.create(activity_length: 93, calories: 1063, distance: 12.65, streak: 3, rating: 8, summary: "good", activity_id: act1.id)
# Run.create(activity_length: 73, calories: 1163, distance: 7.01, streak: 1, rating: 9, summary: "good", activity_id: act2.id)
# Bike.create(activity_length: 49, calories: 560, distance: 8.69, streak: 2, rating: 7, summary: "good", activity_id: act3.id)
# Bike.create(activity_length: 121, calories: 1383, distance: 18.25, streak: 1, rating: 6, summary: "good", activity_id: act4.id)
# Run.create(activity_length: 58, calories: 912, distance: 12.65, streak: 1, rating: 8, summary: "good", activity_id: act5.id)
# Hike.create(activity_length: 142, calories: 974, distance: 5.22, streak: 1, rating: 5, summary: "good", activity_id: act6.id)
# Ski.create(activity_length: 243, calories: 1667, distance: 25.37, streak: 1, rating: 9, summary: "good", activity_id: act7.id)
# Swim.create(activity_length: 45, calories: 309, distance: 12.65, streak: 1, rating: 3, summary: "good", activity_id: act8.id)
# Ski.create(activity_length: 342, calories: 2346, distance: 33.28, streak: 1, rating: 10, summary: "good", activity_id: act9.id)
# Hike.create(activity_length: 82, calories: 562, distance: 2.75, streak: 1, rating: 8, summary: "good", activity_id: act10.id)

puts "Seeds planted 🌱"