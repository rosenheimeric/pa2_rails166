class Subject < ApplicationRecord
    has_many :courses 
    has_many :instructors, through: :courses

end
