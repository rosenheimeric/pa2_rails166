class Course < ApplicationRecord
    has_many :enrollment
    has_many :subjects 
    has_many :user, through: :enrollment 

    def self.search(query, subject) 
        if !query.nil?
            Course.where("name LIKE :query", query: query)
        else
            Course.all
        end 
    end 
end
