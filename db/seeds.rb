# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Report.destroy_all

reports = Report.create([{title: "May 2013", summary: "Summary of the May 2013 Happilabs product report", link: "may_2013_report.pdf"},
                        {title: "March 2013", summary: "Summary of the March 2013 Happilabs product report", link: "march_2013_report.pdf"}])

puts "There are now #{Report.all.count} reports in the database."
