# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
ferrari = Manufacturer.create(name: 'Ferrari', country: 'Italy')
gtb488 = Car.create(name: 'gtb488', color: 'yellow', mileage: '100', description: 'ballin', manufacturer_id: 4)
