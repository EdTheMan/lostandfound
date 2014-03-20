# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Type.destroy_all
Item.destroy_all

book = Type.new(title: "Book",description: "A book is a collection of pages.")
clothing = Type.new(title: "Clothing",description: "A clothing is defined as something that a human wears to keep warmth.")
cellphone = Type.new(title: "Cell Phone",description: "A cell phone is an electronic deviced used by humans to communicate with each other from a far distance.")
computer = Type.new(title: "Computer",description: "A computer is an electronic device used to carry out a set of arithmetic or logical operations.")

Item.create(title: "Hamlet",description: "cool book" ,owner: "John" ,type: book)
Item.create(title: "sock",description: "white" ,owner: "John" ,type: clothing)
Item.create(title: "samsung g s5",description: "white" ,owner: "John" ,type: cellphone)
Item.create(title: "PC",description: "blue/black" ,owner: "John" ,type: computer)
Item.create(title: "Laptop",description: "white" ,owner: "John" ,type: computer)
Item.create(title: "sock",description: "white" ,owner: "John" ,type: book)
Item.create(title: "sock",description: "white" ,owner: "John" ,type: clothing)
Item.create(title: "sock",description: "white" ,owner: "John" ,type: cellphone)
Item.create(title: "sock",description: "white" ,owner: "John" ,type: computer)
Item.create(title: "sock",description: "white" ,owner: "John" ,type: computer)
Item.create(title: "sock",description: "white" ,owner: "John" ,type: book)
Item.create(title: "sock",description: "white" ,owner: "John" ,type: clothing)
Item.create(title: "sock",description: "white" ,owner: "John" ,type: cellphone)
Item.create(title: "sock",description: "white" ,owner: "John" ,type: computer)
Item.create(title: "sock",description: "white" ,owner: "John" ,type: computer)
Item.create(title: "sock",description: "white" ,owner: "John" ,type: book)
Item.create(title: "sock",description: "white" ,owner: "John" ,type: clothing)
Item.create(title: "sock",description: "white" ,owner: "John" ,type: cellphone)
Item.create(title: "sock",description: "white" ,owner: "John" ,type: computer)
Item.create(title: "sock",description: "white" ,owner: "John" ,type: computer)