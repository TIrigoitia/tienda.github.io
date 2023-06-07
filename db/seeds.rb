# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
u = User.new(email:'admin@admin',password:'123456',password_confirmation:'123456', role: 'admin',name: 'Administrador')
if u.valid? then u.save! end
u.save!

u = User.new(email:'client@client',password:'123456',password_confirmation:'123456', role: 'client', name: 'Tomas', lastname: 'Irigoitia', address: '637 n° 660', locality: 'La Plata', phone_number: '221561688')
if u.valid? then u.save! end
u.save!

p = Product.new(name:'Samsung S22', description:'Telefono con 3 camaras',price:'50000',model:'Ss22', brand:'Samsung', stock: true)
if p.valid? then p.save! end
p.save!

p = Product.new(name:'Motorola G20', description:'Telefono smart',price:'45000',model:'MG20', brand:'Motorola', stock: true)
if p.valid? then p.save! end
p.save!