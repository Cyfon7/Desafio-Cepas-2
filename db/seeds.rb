# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Grape.delete_all
Position.delete_all
User.delete_all


#Some grapes to start with
grape_name_list = [ "Reisling",
                    "Pino Gris",
                    "Sauvignon Blanc",
                    "Chardonnay",
                    "Pinot Noir",
                    "Zinfandel",
                    "Syrah",
                    "Cabernet Sauvignon"]
grape_name_list.each { |grape_name| Grape.create(name: grape_name) }

#Admin account
User.create(email: "admin@mail.com", password: "password", password_confirmation: "password", admin: true)

positions_name_list = [ "Editor",
                       "Writer",
                       "Reviewer"]
positions_name_list.each { |positions_name| Position.create(name: positions_name) }

