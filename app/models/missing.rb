class Missing < ActiveRecord::Base
   scope :search_by_name,
    -> (query) {
       where("missings.name ILIKE ?", "%#{query}%")
     }

end
