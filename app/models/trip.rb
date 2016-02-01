class Trip < ActiveRecord::Base
    has_many :comments
end
