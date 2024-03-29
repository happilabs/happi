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
Product.destroy_all
UserVoice.destroy_all


reports = Report.create([{title: "May 2013", summary: "Summary of the May 2013 Happilabs product report", link: "may_2013_report.pdf"},
                        {title: "March 2013", summary: "Summary of the March 2013 Happilabs product report", link: "march_2013_report.pdf"}])

puts "There are now #{Report.all.count} reports in the database."

categories = Category.create([
  {name: "1.5 mL Microtube", fair_price: "123", price_quantity: "500", first_quality: "Science ipsum. Extension of large objects such bound is developed the Kerr.", second_quality: "Variations in state-of-the-art calculations will become.", third_quality: "Program include 6 of measurements made on brain. " },
  {name: "15 mL Conical Tube" , fair_price: "12", price_quantity: "50", first_quality: "Science ipsum. Extension of large objects such bound is developed the Kerr.", second_quality: "Variations in state-of-the-art calculations will become.", third_quality: "Program include 6 of measurements made on brain. " },
  {name: "50 mL Conical Tube" , fair_price: "13", price_quantity: "500", first_quality: "Science ipsum. Extension of large objects such bound is developed the Kerr.", second_quality: "Variations in state-of-the-art calculations will become.", third_quality: "Program include 6 of measurements made on brain. " },
  {name: "Nitrile Gloves" , fair_price: "13", price_quantity: "500", first_quality: "Science ipsum. Extension of large objects such bound is developed the Kerr.", second_quality: "Variations in state-of-the-art calculations will become.", third_quality: "Program include 6 of measurements made on brain. " },
  {name: "Latex Gloves" , fair_price: "123", price_quantity: "500", first_quality: "Science ipsum. Extension of large objects such bound is developed the Kerr.", second_quality: "Variations in state-of-the-art calculations will become.", third_quality: "Program include 6 of measurements made on brain. " },
  {name: "5 mL Serological Pipet" , fair_price: "23", price_quantity: "500", first_quality: "Science ipsum. Extension of large objects such bound is developed the Kerr.", second_quality: "Variations in state-of-the-art calculations will become.", third_quality: "Program include 6 of measurements made on brain. " },
  {name: "10 mL Serological Pipet" , fair_price: "123", price_quantity: "50", first_quality: "Science ipsum. Extension of large objects such bound is developed the Kerr.", second_quality: "Variations in state-of-the-art calculations will become.", third_quality: "Program include 6 of measurements made on brain. " },
  {name: "T75 Flask" , fair_price: "13", price_quantity: "500", first_quality: "Program include 6 of measurements made on brain.", second_quality: "Science ipsum. Extension of large objects such bound is developed the Kerr.", third_quality: "Program include 6 of measurements made on brain. " },
  {name: "10 uL Pipette Tips" , fair_price: "13", price_quantity: "50", first_quality: "Science ipsum. Extension of large objects such bound is developed the Kerr.", second_quality: "Variations in state-of-the-art calculations will become.", third_quality: "Program include 6 of measurements made on brain. " },
  {name: "200 uL Pipette Tips" , fair_price: "3", price_quantity: "500", first_quality: "Science ipsum. Extension of large objects such bound is developed the Kerr.", second_quality: "Variations in state-of-the-art calculations will become.", third_quality: "Program include 6 of measurements made on brain. " },
  {name: "100/1250 uL Pipette Tips" , fair_price: "12", price_quantity: "500", first_quality: "Science ipsum. Extension of large objects such bound is developed the Kerr.", second_quality: "Variations in state-of-the-art calculations will become.", third_quality: "Program include 6 of measurements made on brain. " },
  {name: "100mm Dish" , fair_price: "400", price_quantity:"12", first_quality: "Program include 6 of measurements made on brain. ", second_quality: "Science ipsum. Extension of large objects such bound is developed the Kerr.", third_quality: "Science ipsum. Extension of large objects such bound is developed the Kerr." }
  ])

puts "There are now #{Category.all.count} categories in the database."

reviews = Review.create([
  {user_id: 1, admin_approved: true, make_anonymous: false, user_recommended: false, rating: 4, desc: "Craft beer mixtape umami keffiyeh butcher. Retro Truffaut 3 wolf moon tousled beard, shabby chic typewriter Tonx before they sold out brunch. Butcher freegan skateboard Banksy forage actually tousled. Craft beer scenester lo-fi cliche. Whatever vegan YOLO craft beer, mixtape messenger bag flannel pitchfork tote bag keffiyeh." , product_id: 1},
  {user_id: 1, admin_approved: true, make_anonymous: true, user_recommended: true, rating: 4, desc: "Craft beer mixtape umami keffiyeh butcher. Retro Truffaut 3 wolf moon tousled beard, shabby chic typewriter Tonx before they sold out brunch. Butcher freegan skateboard Banksy forage actually tousled. Craft beer scenester lo-fi cliche. Whatever vegan YOLO craft beer, mixtape messenger bag flannel pitchfork tote bag keffiyeh." , product_id: 2},
  {user_id: 2, admin_approved: true, make_anonymous: false, user_recommended: true, rating: 3, desc: "Craft beer mixtape umami keffiyeh butcher. Retro Truffaut 3 wolf moon tousled beard, shabby chic typewriter Tonx before they sold out brunch. Butcher freegan skateboard Banksy forage actually tousled. Craft beer scenester lo-fi cliche. Whatever vegan YOLO craft beer, mixtape messenger bag flannel pitchfork tote bag keffiyeh." , product_id: 2},
  {user_id: 2, admin_approved: true, make_anonymous: false, user_recommended: true, rating: 5, desc: "Seitan put a bird on it photo booth VHS. Fixie DIY High Life trust fund master cleanse. Try-hard synth authentic, viral leggings brunch cornhole polaroid Williamsburg bicycle rights literally put a bird on it. American apparel yr squid gentrify asymmetrical pug. ", product_id: 3},
  {user_id: 1, admin_approved: false, make_anonymous: false, user_recommended: true, rating: 2, desc: "Mlkshk pitchfork fingerstache PBR. Portland master cleanse kitsch, tattooed fanny pack cliche chambray leggings pug. 3 wolf moon twee farm-to-table stumptown kitsch iPhone, mustache Vice 90's semiotics gentrify. Aesthetic Williamsburg try-hard, whatever 3 wolf moon single-origin coffee narwhal Bushwick YOLO tote bag", product_id: 4}
  ])

puts "There are now #{Review.all.count} reviews in the database."

products = Product.create([
  {id: 1, category_id: 1, product_name: "Boris Beaker", product_desc: "Vinyl synth Schlitz reprehenderit selfies, meggings flannel Neutra cupidatat.", product_num: "123UUUFM333", photo: "http://0.tqn.com/d/chemistry/1/0/E/1/1/chemistry-glassware.jpg", manufacturer_name: "Boris", distributor_name: "Science LTD", price: "$122", recommended: true, url: "http://www.sciencemag.org/"},
  {id: 2, category_id: 1, product_name: "Pyrex Pipette", product_desc: "Vinyl synth Schlitz reprehenderit selfies, meggings flannel Neutra cupidatat.", product_num: "32456JGJGJGJ", photo: "http://0.tqn.com/d/chemistry/1/0/E/1/1/chemistry-glassware.jpg", manufacturer_name: "Pyrex", distributor_name: "Dist Plus", price: "$1234", recommended: false, url: "http://www.sciencemag.org/"},
  {id: 3, category_id: 2, product_name: "Matrix Microtube", product_desc: "Vinyl synth Schlitz reprehenderit selfies, meggings flannel Neutra cupidatat.", product_num: "P3FFf", photo: "http://0.tqn.com/d/chemistry/1/0/E/1/1/chemistry-glassware.jpg", manufacturer_name: "Matrix", distributor_name: "Products'r'us", price: "$9090", recommended: true, url: "http://www.sciencemag.org/"},
  {id: 4, category_id: 2, product_name: "Griptastic Gloves", product_desc: "Vinyl synth Schlitz reprehenderit selfies, meggings flannel Neutra cupidatat.", product_num: "PPFPFLPL@5443", photo: "http://0.tqn.com/d/chemistry/1/0/E/1/1/chemistry-glassware.jpg", manufacturer_name: "Griptastic", distributor_name: "The Beaker Boys", price: "$909/lb", recommended: false, url: "http://www.sciencemag.org/"}
])

puts "There are now #{Review.all.count} reviews in the database."

uservoices = UserVoice.create([
  {user_id: 1, message: "This is a voice"},
  {user_id: 1, message: "This is a voice"}
  ])

puts "There are now #{UserVoice.all.count} reviews in the database."
