# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)}
users=User.create(email:"admin@gmail.com", password:123456, password_confirmation:123456, name:"admin", location:"admin" , company_name:"admin")

bin1 = Bin.create(location:"Kisumu", waste_level:   0, emptied:false)
bin2 = Bin.create(location:"Nairobi CBD", waste_level:55, emptied:false)
bin3 = Bin.create(location:"Nairobi CBD", waste_level:0, emptied:false)
bin4 = Bin.create(location:"Kisumu", waste_level:12, emptied:false)

