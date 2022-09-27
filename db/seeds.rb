# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

  menus = Menu.create([{name: "Ship"}, {name: "Schedule"}])
  ships = Ship.create([
    {regi_number: "JA01MJ"},
    {regi_number: "JA02MJ"},
    {regi_number: "JA03MJ"},
    {regi_number: "JA04MJ"},
    {regi_number: "JA05MJ"},
  ])
