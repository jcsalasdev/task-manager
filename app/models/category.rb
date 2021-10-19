class Category < ApplicationRecord
    validates :cname, presence: true, length: { minimum: 3, maximum: 30 }
    validates_uniqueness_of :cname

    has_many :task_categories
    has_many :tasks, through: :task_categories
end
