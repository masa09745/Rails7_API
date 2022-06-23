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
  schedules = Schedule.create!([
    {from: "HND", to: "ITM", dep_time: "07:30", arr_time: "08:00", ship_id: "1"},
    {from: "ITM", to: "HND", dep_time: "08:30", arr_time: "09:00", ship_id: "1"},
    {from: "HND", to: "FUK", dep_time: "09:30", arr_time: "12:00", ship_id: "1"},
    {from: "FUK", to: "HND", dep_time: "13:30", arr_time: "15:30", ship_id: "1"},
    {from: "ITM", to: "FUK", dep_time: "07:30", arr_time: "08:00", ship_id: "2"},
    {from: "FUK", to: "SDJ", dep_time: "08:30", arr_time: "10:00", ship_id: "2"},
    {from: "SDJ", to: "FUK", dep_time: "10:30", arr_time: "12:00", ship_id: "2"},
    {from: "FUK", to: "ITM", dep_time: "13:30", arr_time: "14:00", ship_id: "2"},
    {from: "HND", to: "SPK", dep_time: "07:30", arr_time: "09:30", ship_id: "3"},
    {from: "SPK", to: "HND", dep_time: "10:30", arr_time: "12:30", ship_id: "3"},
    {from: "HND", to: "ITM", dep_time: "12:30", arr_time: "13:00", ship_id: "3"},
    {from: "ITM", to: "HND", dep_time: "13:30", arr_time: "14:00", ship_id: "3"},
    {from: "SPK", to: "ITM", dep_time: "07:30", arr_time: "09:00", ship_id: "4"},
    {from: "ITM", to: "OKA", dep_time: "08:30", arr_time: "11:00", ship_id: "4"},
    {from: "OKA", to: "ITM", dep_time: "12:30", arr_time: "15:00", ship_id: "4"},
    {from: "ITM", to: "FUK", dep_time: "16:30", arr_time: "17:30", ship_id: "4"},
    {from: "OKA", to: "HND", dep_time: "07:30", arr_time: "10:30", ship_id: "5"},
    {from: "HND", to: "OKJ", dep_time: "11:00", arr_time: "12:30", ship_id: "5"},
    {from: "OKJ", to: "HND", dep_time: "13:00", arr_time: "14:30", ship_id: "5"},
    {from: "HND", to: "SPK", dep_time: "14:30", arr_time: "17:30", ship_id: "5"},
  ])