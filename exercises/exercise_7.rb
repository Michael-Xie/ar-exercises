require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
# BONUS: Stores must carry at least one of the men's or women's apparel (hint: use a custom validation method - don't use a Validator class)
# Ask the user for a store name (store it in a variable)
# Attempt to create a store with the inputted name but leave out the other fields (annual_revenue, mens_apparel, and womens_apparel)
# Display the error messages provided back from ActiveRecord to the user (one on each line) after you attempt to save/create the record

employee1 = @store2.employees.create(last_name: "Virani", hourly_rate: "string")
employee2 = @store2.employees.create(first_name: "Emp 5", hourly_rate: 300)
employee3 = Employee.create(first_name: "No", last_name: "Store", hourly_rate: 30)
p employee1.errors.messages
p employee2.errors.messages
p employee3.errors.messages

print "Enter a store name: "
store_name = gets.chomp

new_store = Store.create(name: store_name, womens_apparel: false)
p new_store.errors.messages