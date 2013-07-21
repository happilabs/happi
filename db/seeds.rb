# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


Report.destroy_all
Category.destroy_all
Review.destroy_all

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
  {name: "1.5 mL Microtube" },
  {name: "1.5 mL Microtube" },
  ])

puts "There are now #{Category.all.count} categories in the database."

reviews = Review.create([
  {id: 1, user_id: 1, admin_approved: true, make_anonymous: false, user_recommended: false, rating: 4, desc: "Craft beer mixtape umami keffiyeh butcher. Retro Truffaut 3 wolf moon tousled beard, shabby chic typewriter Tonx before they sold out brunch. Butcher freegan skateboard Banksy forage actually tousled. Craft beer scenester lo-fi cliche. Whatever vegan YOLO craft beer, mixtape messenger bag flannel pitchfork tote bag keffiyeh." , product_id: 1},
  {id: 2, user_id: 1, admin_approved: true, make_anonymous: true, user_recommended: true, rating: 4, desc: "Craft beer mixtape umami keffiyeh butcher. Retro Truffaut 3 wolf moon tousled beard, shabby chic typewriter Tonx before they sold out brunch. Butcher freegan skateboard Banksy forage actually tousled. Craft beer scenester lo-fi cliche. Whatever vegan YOLO craft beer, mixtape messenger bag flannel pitchfork tote bag keffiyeh." , product_id: 2},
  {id: 3, user_id: 2, admin_approved: true, make_anonymous: false, user_recommended: true, rating: 3, desc: "Craft beer mixtape umami keffiyeh butcher. Retro Truffaut 3 wolf moon tousled beard, shabby chic typewriter Tonx before they sold out brunch. Butcher freegan skateboard Banksy forage actually tousled. Craft beer scenester lo-fi cliche. Whatever vegan YOLO craft beer, mixtape messenger bag flannel pitchfork tote bag keffiyeh." , product_id: 2},
  {id: 4, user_id: 2, admin_approved: true, make_anonymous: false, user_recommended: true, rating: 5, desc: "Seitan put a bird on it photo booth VHS. Fixie DIY High Life trust fund master cleanse. Try-hard synth authentic, viral leggings brunch cornhole polaroid Williamsburg bicycle rights literally put a bird on it. American apparel yr squid gentrify asymmetrical pug. ", product_id: 3},
  {id: 5, user_id: 1, admin_approved: false, make_anonymous: false, user_recommended: true, rating: 2, desc: "Mlkshk pitchfork fingerstache PBR. Portland master cleanse kitsch, tattooed fanny pack cliche chambray leggings pug. 3 wolf moon twee farm-to-table stumptown kitsch iPhone, mustache Vice 90's semiotics gentrify. Aesthetic Williamsburg try-hard, whatever 3 wolf moon single-origin coffee narwhal Bushwick YOLO tote bag", product_id: 4}
  ])

puts "There are now #{Review.all.count} reviews in the database."
