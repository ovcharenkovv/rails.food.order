# encoding: utf-8
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#Mayor.create(:name => 'Daley', :city => cities.first)
categories = Category.create([{ :name => 'Премиум' }, { :name => 'Стандарт' }, { :name => 'Эконом' }, { :name => 'Дополнительно' }, { :name => 'Ежетневные' }])
##Среда
##Премиум
#Dish.create(:name => 'Салат',:description => '"Апполон": язык говяжый, огурцы, помидоры, майонез. ',:price => '6',:week_day => '3',:weight => '100',:category_id => '1')
#Dish.create(:name => 'Второе',:description => 'Шашлык из свинины. Рис тушеный.',:price => '12',:week_day => '3',:weight => '300',:category_id => '1')
##Стандарт
#Dish.create(:name => 'Салат',:description => 'Капуста, перец, растительное масло.',:price => '5',:week_day => '3',:weight => '100',:category_id => '2')
#Dish.create(:name => 'Мясное',:description => 'Печень жареная с луком. Картофельное пюре.',:price => '10',:week_day => '3',:weight => '300',:category_id => '2')
#Dish.create(:name => 'Рыбное',:description => 'Мойва жаренаяю Картофельное пюре.',:price => '10',:week_day => '3',:weight => '300',:category_id => '2')
##Эконом
#Dish.create(:name => 'Салат',:description => 'Корейськая морковь.',:price => '4',:week_day => '3',:weight => '100',:category_id => '3')
#Dish.create(:name => 'Второе',:description => 'Котлета рыбная. Рис тушеный.',:price => '7',:week_day => '3',:weight => '280',:category_id => '3')
##Дополнительно
#Dish.create(:name => 'Первое',:description => 'Суп гроховый с гренками.',:price => '4',:week_day => '3',:weight => '300',:category_id => '4')
#Dish.create(:name => 'Молочное',:description => 'Каша гречневая с молоком.',:price => '4',:week_day => '3',:weight => '300',:category_id => '4')
#Dish.create(:name => 'Овощное',:description => 'Икра свекольная.',:price => '4',:week_day => '3',:weight => '100',:category_id => '4')
#Dish.create(:name => 'Десерт',:description => 'Оладьи с варением.',:price => '4',:week_day => '3',:weight => '120',:category_id => '4')
#Dish.create(:name => 'Фрукты',:description => 'Салат-коктейль со свежими фруктами.',:price => '5',:week_day => '3',:weight => '150',:category_id => '4')
#Dish.create(:name => 'Выиечка',:description => 'Маковик.',:price => '3.5',:week_day => '3',:weight => '1 шт.',:category_id => '4')
#
