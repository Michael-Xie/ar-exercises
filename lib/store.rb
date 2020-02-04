class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, greater_than_or_equal_to: 0}
  validate :store_must_carry_one_apparel
  def store_must_carry_one_apparel
    puts mens_apparel
    puts womens_apparel
    if !mens_apparel && !womens_apparel
      errors[:base] << "must have either men's apparel or women's apparel"
    end
  end
end

# Stores must always have a name that is a minimum of 3 characters
# Stores have an annual_revenue that is a number (integer) that must be 0 or more
