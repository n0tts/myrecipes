class Recipe < ActiveRecord::Base
    validates :name, presence: true, length: { minimum: 5, maximum: 100 }
    validates :summary, presence: true, length: { minimum: 20, maximum: 250 }
    validates :description, presence: true, length: { minimum: 40, maximum: 500 }
end