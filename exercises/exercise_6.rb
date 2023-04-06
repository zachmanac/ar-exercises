require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
Store.has_many :employees
Employee.belongs_to :store
@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "John", last_name: "Cena", hourly_rate: 30)
@store1.employees.create(first_name: "Jane", last_name: "Armana", hourly_rate: 25)
@store2.employees.create(first_name: "Sylvia", last_name: "Palmer", hourly_rate: 31)
@store2.employees.create(first_name: "Colin", last_name: "Maxwell", hourly_rate: 47)
p @store1.employees
p @store2.employees