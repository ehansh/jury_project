# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

MeasureGroup.delete_all
Measure.delete_all
Jury.delete_all

keyboard = MeasureGroup.create({name: 'Keyboard'})
vocal = MeasureGroup.create({name: 'Vocal'})

first = Measure.create(name: 'Use of Pedal' )
last = Measure.create(name: 'Pitch' )

keyboard.measure_id = first.id
puts "#{keyboard.measure_id}"
keyboard.measures << first
keyboard.measures << last

puts keyboard.measures.first.name

