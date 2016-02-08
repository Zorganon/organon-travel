class Trip < ActiveRecord::Base
    has_many :comments
    
    validates :name, presence: true
    validates :price, numericality: { only_integer: true}
end
