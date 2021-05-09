# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

Contract.create([
                #  { date: '05/07/2021' },
                #  { date: '05/08/2021' },
                #  { date: '05/09/2021' },
                 { date: '05/10/2021' },
                 { date: '05/11/2021' }
                #  ,
                #  { date: 'Beast Yoga' },
                #  { date: 'Rehab: Left Ankle' },
                #  { date: 'Basketball Drills' }
                 ])

post1 = d.posts.create({ date: '05/09/2021' })