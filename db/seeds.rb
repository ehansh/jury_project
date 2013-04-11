# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

CriteriaGroup.delete_all
Criteria.delete_all
Jury.delete_all




keyboard = CriteriaGroup.new({name: 'Keyboard'})
vocal = CriteriaGroup.new({name: 'Vocal'})

first = Criteria.create(name: 'Use of Pedal', criteria_group: keyboard)
last = Criteria.create(name: 'Pitch', criteria_group: vocal)