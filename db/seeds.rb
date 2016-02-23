# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.delete_all
c1 = Category.create(image: "steik.jpg", title: "Горячее", quantity: "Выход, г", price: "Цена, ГРН", article: "Горячее меню ресторана БЛА БЛА")
c2 = Category.create(image: "napitki.jpg", title: "Напитки", quantity: "Выход, мл", price: "Цена, ГРН", article: "Напитки ресторана БЛА БЛА")
c3 = Category.create(image: "pasta.jpg", title: "Пасты", quantity: "Выход, г", price: "Цена, ГРН", article: "Меню паст ресторана БЛА БЛА")
c4 = Category.create(image: "pissa.jpg", title: "Пиццы", quantity: "Выход, г", price: "Цена, ГРН", article: "Меню пиццы ресторана БЛА БЛА")
c5 = Category.create(image: "omlet.jpg", title: "Омлеты", quantity: "Выход, г", price: "Цена, ГРН", article: "Меню омлетов ресторана БЛА БЛА")
c6 = Category.create(image: "sup.jpg", title: "Супы", quantity: "Выход, г", price: "Цена, ГРН", article: "Меню супов ресторана БЛА БЛА")
c6 = Category.create(image: "zakys.jpg", title: "Закуски", quantity: "Выход, г", price: "Цена, ГРН", article: "Меню закусок ресторана БЛА БЛА")
c6 = Category.create(image: "salat.jpg", title: "Салаты", quantity: "Выход, г", price: "Цена, ГРН", article: "Меню салатов ресторана БЛА БЛА")

Information.delete_all
Information.create(title: "8 марта", article: "Для милых дам", description: "Только у нас в этот день для милых дам коктейли 2 по цене 1")
Information.create(title: "8 марта", article: "Для милых дам", description: "Только у нас в этот день для милых дам коктейли 2 по цене 1")
Information.create(title: "8 марта", article: "Для милых дам", description: "Только у нас в этот день для милых дам коктейли 2 по цене 1")
Information.create(title: "8 марта", article: "Для милых дам", description: "Только у нас в этот день для милых дам коктейли 2 по цене 1")
Information.create(title: "8 марта", article: "Для милых дам", description: "Только у нас в этот день для милых дам коктейли 2 по цене 1")

Comment.delete_all
Comment.create(title: "Всем привет", text: "Отмечал День рождение в этом чудном ресторане, все супер все понравилось", name: "Виктор", email: "vitya@org.ru")
Comment.create(title: "Доброго времени суток", text: "Отмечал День рождение в этом чудном ресторане, все супер все понравилось", name: "Вита", email: "vita@org.ru")
Comment.create(title: "Приятное место", text: "Отмечал День рождение в этом чудном ресторане, все супер все понравилось", name: "Нина", email: "nina@org.ru")
Comment.create(title: "+10", text: "Отмечал День рождение в этом чудном ресторане, все супер все понравилось", name: "Мишаня", email: "miha@org.ru")
Comment.create(title: "Приветы!!!", text: "Отмечал День рождение в этом чудном ресторане, все супер все понравилось", name: "Роман", email: "ru@org.ru")

Album.delete_all
Album.create(title: "8 марта")
Album.create(title: "7 марта")
Album.create(title: "Апрель")
Album.create(title: "Ура лето")
Album.create(title: "Праздник супер")
Album.create(title: "Вертикально")

Slider.delete_all
Slider.create(slide: "0.jpd", article: "Hello", more_url: "sfkdskfjlsd", number: 0)
Slider.create(slide: "1.png", article: "Hello", more_url: "sfkdskfjlsd", number: 1)
Slider.create(slide: "2.png", article: "Hello", more_url: "sfkdskfjlsd", number: 2)
Slider.create(slide: "3.jpd", article: "Hello", more_url: "sfkdskfjlsd", number: 3)