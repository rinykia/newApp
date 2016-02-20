# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.delete_all
Category.create(title: "Горячее", quantity: "Выход, г", price: "Цена, ГРН")
Category.create(title: "Пасты", quantity: "Выход, г", price: "Цена, ГРН")
Category.create(title: "Пиццы", quantity: "Выход, г", price: "Цена, ГРН")
Category.create(title: "Омлеты", quantity: "Выход, г", price: "Цена, ГРН")
Category.create(title: "Супы", quantity: "Выход, г", price: "Цена, ГРН")
Category.create(title: "Напитки", quantity: "Выход, мл", price: "Цена, ГРН")

