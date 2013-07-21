# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Report.destroy_all
Category.destroy_all

reports = Report.create([{title: "May 2013", summary: "Summary of the May 2013 Happilabs product report", link: "may_2013_report.pdf"},
                        {title: "March 2013", summary: "Summary of the March 2013 Happilabs product report", link: "march_2013_report.pdf"}])

puts "There are now #{Report.all.count} reports in the database."

categories = Category.create([
  {name: "1.5 mL Microtube" },
  {name: "15 mL Conical Tube" },
  {name: "50 mL Conical Tube" },
  {name: "Nitrile Gloves" },
  {name: "Latex Gloves" },
  {name: "5 mL Serological Pipet" },
  {name: "10 mL Serological Pipet" },
  {name: "T75 Flask" },
  {name: "10 uL Pipette Tips" },
  {name: "200 uL Pipette Tips" },
  {name: "100/1250 uL Pipette Tips" },
  ])

puts "There are now #{Category.all.count} reports in the database."
