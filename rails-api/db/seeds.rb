# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

l1 = List.create(title: "grocery list", list_link: "https://listonic.com/basic-grocery-list/", image_link: "https://cdn.shortpixel.ai/client/q_glossy,ret_img/https://listonic.com/wp-content/uploads/2018/12/grocery-bag-1-3.png")
l1.items << [Item.find_or_create_by(name: "rice"), Item.find_or_create_by(name: "black beans"), Item.find_or_create_by(name: "strawberries"), Item.find_or_create_by(name: "avocados"), Item.find_or_create_by(name: "oreos"), Item.find_or_create_by(name: "almond milk"), Item.find_or_create_by(name: "cheddar cheese"), Item.find_or_create_by(name: "tortilla chips"), Item.find_or_create_by(name: "greek yogurt"), Item.find_or_create_by(name: "coconut oil")]

l2 = List.create(title: "chores list", list_link: "https://cleaning.lovetoknow.com/Household_Chore_List", image_link: "https://media1.popsugar-assets.com/files/thumbor/lvI6U9j48l6RW9VLqQxLPwydSNU/fit-in/1024x1024/filters:format_auto-!!-:strip_icc-!!-/2018/10/15/880/n/45064954/1be9c0235bc4f3a4829881.48493529_/i/Benefits-Making-Your-Bed-Every-Day.jpg")
l2.items << [Item.find_or_create_by(name: "make bed"), Item.find_or_create_by(name: "pick up shoes"), Item.find_or_create_by(name: "do laundry"), Item.find_or_create_by(name: "wash dishes"), Item.find_or_create_by(name: "wash the cars"), Item.find_or_create_by(name: "order present for Samantha"), Item.find_or_create_by(name: "dust windows"), Item.find_or_create_by(name: "take out trash"), Item.find_or_create_by(name: "put books back on shelf"), Item.find_or_create_by(name: "feed pets")]

l3 = List.create(title: "honey-do list", list_link: "https://fixinthehouse.com/top-10-honey-list-items/", image_link: "https://cdn.someecards.com/someecards/usercards/i-dont-have-a-honey-do-list-i-have-an-ill-freaking-do-it-myself-list-and-guess-what-it-gets-done--c142f.png")
l3.items << [Item.find_or_create_by(name: "fix running toilet"), Item.find_or_create_by(name: "clear gutters"), Item.find_or_create_by(name: "mow lawn"), Item.find_or_create_by(name: "powerwash siding"), Item.find_or_create_by(name: "clean grill"), Item.find_or_create_by(name: "wipe windows"), Item.find_or_create_by(name: "vaccuum living room"), Item.find_or_create_by(name: "rake leaves"), Item.find_or_create_by(name: "move trash bins to the street"), Item.find_or_create_by(name: "water plants")]

l4 = List.create(title: "travel list", list_link: "https://www.lonelyplanet.com/landing/ultimate-travel-list", image_link: "https://www.pcma.org/wp-content/uploads/2019/08/Travel-tips.png")
l4.items << [Item.find_or_create_by(name: "Bali, Indonesia"), Item.find_or_create_by(name: "Sydney, Australia"), Item.find_or_create_by(name: "The Maldives"), Item.find_or_create_by(name: "Dubai, U.A.E"), Item.find_or_create_by(name: "New York, New York"), Item.find_or_create_by(name: "Edinburgh, Scotland"), Item.find_or_create_by(name: "Rome, Italy"), Item.find_or_create_by(name: "Waikato, New Zealand"), Item.find_or_create_by(name: "Tokyo, Japan"), Item.find_or_create_by(name: "Antarctica")]

l5 = List.create(title: "reading list", list_link: "https://jamesclear.com/best-books", image_link: "https://www.tuck.dartmouth.edu/images/made/uploads/articles/faculty-reads-collage_1500_1000_70.jpg")
l5.items << [Item.find_or_create_by(name: "Into Thin Air"), Item.find_or_create_by(name: "Sapiens: A Brief History of Humankind"), Item.find_or_create_by(name: "Harry Potter series"), Item.find_or_create_by(name: "To Kill a Mockingbird"), Item.find_or_create_by(name: "And Then There Were None"), Item.find_or_create_by(name: "The Lion, the Witch and the Wardrobe"), Item.find_or_create_by(name: "Thinking, Fast and Slow"), Item.find_or_create_by(name: "Lord of the Rings trilogy"), Item.find_or_create_by(name: "The Count of Monte Cristo"), Item.find_or_create_by(name: "10% Happier")]
