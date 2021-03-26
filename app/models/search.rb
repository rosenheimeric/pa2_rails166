class Search < ApplicationRecord
    def self.search(query, subject)
        if search 
            where(["name LIKE ?","%#{search}%"])
        else
            all
        end
    end 
end
