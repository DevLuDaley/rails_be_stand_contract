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
                 { date: '10/05/2021' }, #! c1
                 { date: '11/05/2021' }, #c2 
                 { date: '12/05/2021' }, #c3 
                 { date: '13/05/2021' }, #r4
                 { date: '14/05/2021' } #,
                #  { date: '15/05/2021' },
                #  { date: '16/05/2021' },
                #  { date: '17/05/2021' },
                #  { date: '18/05/2021' },
                #  { date: '19/05/2021' }
               ])

# Post.create([
#                  { date: 'cardio', title: 'basketball', distance: '1', duration: '1' },
#                  { date: 'cardio', title: 'running', distance: '2', duration: '1' },
#                  { date: 'cardio', title: 'bike riding', distance: '1', duration: '1.5' },
#                  { date: 'cardio', title: 'floor bridges', distance: '1', duration: '1.5' },
#                  { date: 'cardio', title: 'jogging', distance: '1', duration: '1' },
#                  { date: 'cardio', title: 'sprinting', distance: '1', duration: '2.5' },
#                  { date: 'cardio', title: 'push ups', distance: '1', duration: '1.5' },
#                  { date: 'cardio', title: 'crunches', distance: '1', duration: '2.5' },
#                  { date: 'cardio', title: 'squats', distance: '2', duration: '3.5' }
#                ])

#  { date: 'cardio', title: 'floor bridges', distance: '1', duration: '1.5', routines: [{ id: 4, date: 'Rehab: Quads' }] },

c1 = Contract.all[0]
c1.posts.create(date: '10-05-2021', title: 'stand-up') #, distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
c1.posts.create(date: '10-05-2021', title: 'sit-down') #, distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))

Goal.create(date: '11/05/2021', title: 'build stand-contract rails back-end api', done: 'false')

p1 = Post.all[0]
# ! create the nested resource below later
 p1.goals.create(date: '10-05-2021', title: 'create 5 commits today') #+, done:'false')



c2 = Contract.all[1]
c2.posts.create(date: '11-05-2021', title: 'stand-up') #, distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
c2.posts.create(date: '11-05-2021', title: 'sit-down') #, distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))

c3 = Contract.all[2]
c3.posts.create(date: '12-05-2021', title: 'stand-up') #, distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
c3.posts.create(date: '12-05-2021', title: 'sit-down') #, distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))

c4 = Contract.all[3]
c4.posts.create(date: '13-05-2021', title: 'stand-up') #, distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
c4.posts.create(date: '13-05-2021', title: 'sit-down') #, distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
# r2 = Contract.all[1]
# r2.posts.create(date: 'Cardio', title: 'floor-clam-shells', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
# r2.posts.create(date: 'Cardio', title: 'tke\'s', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
# r2.posts.create(date: 'Cardio', title: 'floor-bridges', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
# r2.posts.create(date: 'Cardio', title: 'big-runs', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
# r2.posts.create(date: 'Cardio', title: 'back-flips', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
# r2.posts.create(date: 'Cardio', title: 'ace\'s', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
# r3 = Contract.all[2]
# r3.posts.create(date: 'Cardio', title: 'elliptical', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
# r4 = Contract.all[3]
# r4.posts.create(date: 'Cardio', title: 'suicides', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
# r4.posts.create(date: 'Cardio', title: 'mican-drill', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
# r5 = Contract.all[4]
# r5.posts.create(date: 'Cardio', title: 'sprints', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
# r5.posts.create(date: 'Cardio', title: 'bridges', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
 
# r6 = Contract.all[5]
# r6.posts.create(date: 'Cardio', title: 'burpies', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
# r6.posts.create(date: 'Cardio', title: 'old-soldiers', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
 
# r7 = Contract.all[6]
# r7.posts.create(date: 'Cardio', title: 'dancing', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
# r7.posts.create(date: 'Cardio', title: 'jump-rope', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
 
# r8 = Contract.all[7]
# r8.posts.create(date: 'Cardio', title: 'shadow-boxing', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
# r8.posts.create(date: 'Cardio', title: 'break-dancing', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
 
# r9 = Contract.all[8]
# r9.posts.create(date: 'Cardio', title: 'roller-skates', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
# r9.posts.create(date: 'Cardio', title: 'thumb-wrestling', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
 
# r10 = Contract.all[9]
# r10.posts.create(date: 'Cardio', title: 'backwards-bear-crawls', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
# r10.posts.create(date: 'Cardio', title: 'pull-ups', distance: Faker::Number.between(from: 1, to: 8), duration: Faker::Number.between(from: 1, to: 10))
 
# 1.upto(5) do |_i|
#   Contract.post.create(date: 'Cardio', name: 'Jogging', distance: '1', duration: '1')
# end

# Contract.posts.create(date: 'Cardio', name: 'Jogging', distance: '1', duration: '1')

# .posts.create(date: 'Cardio', name: 'Basketball', distance: '5', duration: '2')

# r = Contract.all[0]
# r = Contract.all[1]
# r.posts.create(date:"Cardio", name: "Basketball", distance: "42", duration: "22")