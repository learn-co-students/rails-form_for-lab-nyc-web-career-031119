# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
nex = Student.find_or_create_by(first_name: 'Neh', last_name: 'Ext')
ps1 = SchoolClass.find_or_create_by(title: 'no', room_number: 543)
