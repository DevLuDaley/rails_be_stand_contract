# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

# Contract.create([
#                 #  { date: '05/07/2021' },
#                 #  { date: '05/08/2021' },
#                 #  { date: '05/09/2021' },
#                  { date: '05/10/2021' },
#                  { date: '05/11/2021' }
#                 #  ,
#                 #  { date: 'Beast Yoga' },
#                 #  { date: 'Rehab: Left Ankle' },
#                 #  { date: 'Basketball Drills' }
#                  ])

# post1 = d.posts.create({ date: '05/09/2021' })


Contract.create([
                 { date: '10/05/2021' },
                 { date: '10/05/2021' },
                 { date: '10/05/2021' },
                 { date: '10/05/2021' },
                 { date: '10/05/2021' },
                 { date: '10/05/2021' },
                 { date: '10/05/2021' },
                 { date: '10/05/2021' },
                 { date: '10/05/2021' },
                 { date: '10/05/2021' }
               ])

Post.create([
                 { post_type: 'cardio', post_name: 'basketball', distance: '1', duration: '1' },
                 { post_type: 'cardio', post_name: 'running', distance: '2', duration: '1' },
                 { post_type: 'cardio', post_name: 'bike riding', distance: '1', duration: '1.5' },
                 { post_type: 'cardio', post_name: 'floor bridges', distance: '1', duration: '1.5' },
                 { post_type: 'cardio', post_name: 'jogging', distance: '1', duration: '1' },
                 { post_type: 'cardio', post_name: 'sprinting', distance: '1', duration: '2.5' },
                 { post_type: 'cardio', post_name: 'push ups', distance: '1', duration: '1.5' },
                 { post_type: 'cardio', post_name: 'crunches', distance: '1', duration: '2.5' },
                 { post_type: 'cardio', post_name: 'squats', distance: '2', duration: '3.5' }
               ])

#  { post_type: 'cardio', post_name: 'floor bridges', distance: '1', duration: '1.5', routines: [{ id: 4, date: 'Rehab: Quads' }] },

r1 = Contract.all[0]
r1.posts.create(post_type: 'Cardio', post_name: 'squats', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r1.posts.create(post_type: 'Cardio', post_name: 'boogie-board', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r1.posts.create(post_type: 'Cardio', post_name: 'old-soldier-runs', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r1.posts.create(post_type: 'Cardio', post_name: 'young-soldier-runs', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r1.posts.create(post_type: 'Cardio', post_name: 'fighter-pilot-swings', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r1.posts.create(post_type: 'Cardio', post_name: 'one-legged-squats', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r1.posts.create(post_type: 'Cardio', post_name: 'floor-calf-stretch', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r2 = Contract.all[1]
r2.posts.create(post_type: 'Cardio', post_name: 'floor-clam-shells', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r2.posts.create(post_type: 'Cardio', post_name: 'tke\'s', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r2.posts.create(post_type: 'Cardio', post_name: 'floor-bridges', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r2.posts.create(post_type: 'Cardio', post_name: 'big-runs', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r2.posts.create(post_type: 'Cardio', post_name: 'back-flips', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r2.posts.create(post_type: 'Cardio', post_name: 'ace\'s', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r3 = Contract.all[2]
r3.posts.create(post_type: 'Cardio', post_name: 'elliptical', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r4 = Contract.all[3]
r4.posts.create(post_type: 'Cardio', post_name: 'suicides', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r4.posts.create(post_type: 'Cardio', post_name: 'mican-drill', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r5 = Contract.all[4]
r5.posts.create(post_type: 'Cardio', post_name: 'sprints', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r5.posts.create(post_type: 'Cardio', post_name: 'bridges', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
 
r6 = Contract.all[5]
r6.posts.create(post_type: 'Cardio', post_name: 'burpies', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r6.posts.create(post_type: 'Cardio', post_name: 'old-soldiers', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
 
r7 = Contract.all[6]
r7.posts.create(post_type: 'Cardio', post_name: 'dancing', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r7.posts.create(post_type: 'Cardio', post_name: 'jump-rope', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
 
r8 = Contract.all[7]
r8.posts.create(post_type: 'Cardio', post_name: 'shadow-boxing', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r8.posts.create(post_type: 'Cardio', post_name: 'break-dancing', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
 
r9 = Contract.all[8]
r9.posts.create(post_type: 'Cardio', post_name: 'roller-skates', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r9.posts.create(post_type: 'Cardio', post_name: 'thumb-wrestling', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
 
r10 = Contract.all[9]
r10.posts.create(post_type: 'Cardio', post_name: 'backwards-bear-crawls', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
r10.posts.create(post_type: 'Cardio', post_name: 'pull-ups', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
 
# 1.upto(5) do |_i|
#   Contract.post.create(post_type: 'Cardio', name: 'Jogging', distance: '1', duration: '1')
# end

# Contract.posts.create(post_type: 'Cardio', name: 'Jogging', distance: '1', duration: '1')

# .posts.create(post_type: 'Cardio', name: 'Basketball', distance: '5', duration: '2')

# r = Contract.all[0]
# r = Contract.all[1]
# r.posts.create(post_type:"Cardio", name: "Basketball", distance: "42", duration: "22")