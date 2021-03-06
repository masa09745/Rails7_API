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
    {flight_number: "JX101", from: "HND", to: "ITM", dep_date: "2022/06/24", dep_time: "07:30", arr_date: "2022/06/24", arr_time: "08:00", ship_id: "1"},
    {flight_number: "JX102", from: "ITM", to: "HND", dep_date: "2022/06/24", dep_time: "08:30", arr_date: "2022/06/24", arr_time: "09:00", ship_id: "1"},
    {flight_number: "JX301", from: "HND", to: "FUK", dep_date: "2022/06/24", dep_time: "09:30", arr_date: "2022/06/24", arr_time: "12:00", ship_id: "1"},
    {flight_number: "JX302", from: "FUK", to: "HND", dep_date: "2022/06/24", dep_time: "13:30", arr_date: "2022/06/24", arr_time: "15:30", ship_id: "1"},
    {flight_number: "JX2051", from: "ITM", to: "FUK", dep_date: "2022/06/24", dep_time: "07:30", arr_date: "2022/06/24", arr_time: "08:00", ship_id: "2"},
    {flight_number: "JX3651", from: "FUK", to: "SDJ", dep_date: "2022/06/24", dep_time: "08:30", arr_date: "2022/06/24", arr_time: "10:00", ship_id: "2"},
    {flight_number: "JX3652", from: "SDJ", to: "FUK", dep_date: "2022/06/24", dep_time: "10:30", arr_date: "2022/06/24", arr_time: "12:00", ship_id: "2"},
    {flight_number: "JX2052", from: "FUK", to: "ITM", dep_date: "2022/06/24", dep_time: "13:30", arr_date: "2022/06/24", arr_time: "14:00", ship_id: "2"},
    {flight_number: "JX501", from: "HND", to: "SPK", dep_date: "2022/06/24", dep_time: "07:30", arr_date: "2022/06/24", arr_time: "09:30", ship_id: "3"},
    {flight_number: "JX502", from: "SPK", to: "HND", dep_date: "2022/06/24", dep_time: "10:30", arr_date: "2022/06/24", arr_time: "12:30", ship_id: "3"},
    {flight_number: "JX111", from: "HND", to: "ITM", dep_date: "2022/06/24", dep_time: "12:30", arr_date: "2022/06/24", arr_time: "13:00", ship_id: "3"},
    {flight_number: "JX112", from: "ITM", to: "HND", dep_date: "2022/06/24", dep_time: "13:30", arr_date: "2022/06/24", arr_time: "14:00", ship_id: "3"},
    {flight_number: "JX2011", from: "SPK", to: "ITM", dep_date: "2022/06/24", dep_time: "07:30", arr_date: "2022/06/24", arr_time: "09:00", ship_id: "4"},
    {flight_number: "JX2001", from: "ITM", to: "OKA", dep_date: "2022/06/24", dep_time: "08:30", arr_date: "2022/06/24", arr_time: "11:00", ship_id: "4"},
    {flight_number: "JX2002", from: "OKA", to: "ITM", dep_date: "2022/06/24", dep_time: "12:30", arr_date: "2022/06/24", arr_time: "15:00", ship_id: "4"},
    {flight_number: "JX2053", from: "ITM", to: "FUK", dep_date: "2022/06/24", dep_time: "16:30", arr_date: "2022/06/24", arr_time: "17:30", ship_id: "4"},
    {flight_number: "JX922", from: "OKA", to: "HND", dep_date: "2022/06/24", dep_time: "07:30", arr_date: "2022/06/24", arr_time: "10:30", ship_id: "5"},
    {flight_number: "JX131", from: "HND", to: "OKJ", dep_date: "2022/06/24", dep_time: "11:00", arr_date: "2022/06/24", arr_time: "12:30", ship_id: "5"},
    {flight_number: "JX132", from: "OKJ", to: "HND", dep_date: "2022/06/24", dep_time: "13:00", arr_date: "2022/06/24", arr_time: "14:30", ship_id: "5"},
    {flight_number: "JX511", from: "HND", to: "SPK", dep_date: "2022/06/24", dep_time: "14:30", arr_date: "2022/06/24", arr_time: "17:30", ship_id: "5"},
  ])

  maintenances = Maintenance.create!([
    {date: "2022/06/24", ATA: "33", title: "READING LT NG", description:"READING LT ??????????????? BULB CHG SAME", ship_id: "1"},
    {date: "2022/06/24", ATA: "21", title: "PACK FAIL", description:"PACK FAIL MSG APPEAR MM:21XXXX092 RESET???OPE CK OK", ship_id: "1"},
    {date: "2022/06/24", ATA: "32", title: "BRK TEMP HI", description:"ARR??? BRK TEMP????????? ???WATCH", ship_id: "1"},
    {date: "2022/06/24", ATA: "45", title: "IFE INOP", description:"IN FLT???ALL IFE INOP MASTER RESET???OK", ship_id: "2"},
    {date: "2022/06/24", ATA: "33", title: "TAXT LT NG", description:"TAXI LT ???????????? CHG?????????????????? ", ship_id: "2"},
    {date: "2022/06/24", ATA: "72", title: "L ENG ITT HI", description:"L ENG ITT??????????????? STAY???W/W?????????????????????", ship_id: "2"},
    {date: "2022/06/24", ATA: "32", title: "RI BRK WORN", description:"RI BRK??????1mm STAY???CHG?????????????????????", ship_id: "3"},
    {date: "2022/06/24", ATA: "27", title: "FLT CONT NO DISP ", description:"FLT CONT NO DISP MSG APPEAR RTS?????????OK", ship_id: "3"},
    {date: "2022/06/24", ATA: "22", title: "AP FAIL", description:"AP FAIL MSG APPER RESET???OK", ship_id: "3"},
  ])