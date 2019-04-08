# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
student1 = Student.create(first_name: "Sam", last_name: "Guo")
student2 = Student.create(first_name: "Asuna", last_name: "Yuuki")

sc1 = SchoolClass.create(title: "SAO", room_number: 24)
sc2 = SchoolClass.create(title: "Rath", room_number: 25)
