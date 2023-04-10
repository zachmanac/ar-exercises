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
class Employee
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :hourly_rate, numericality: {only_integer: true, greater_than_or_equal_to: 40, less_than_or_equal_to: 200}
  validates :store_id, numericality: {only_integer: true}, presence: true
end

class Store
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validate :mens_or_womens

  def mens_or_womens
    if mens_apparel == nil && womens_apparel == nil || mens_apparel == false && womens_apparel == false
    errors.add(:base, "must have at least one of mens_apparel or womens_apparel")
    end
  end

end

storeName = "Tofino"
Store.create({name: "Port Hardy", annual_revenue: 350000, mens_apparel: true, womens_apparel: false})
p Store.create({name: storeName}).errors.full_messages