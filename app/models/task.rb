class Task < ApplicationRecord
    belongs_to :user
    has_many :task_categories
    has_many :categories, through: :task_categories

    validates :title, presence: true, length: { minimum: 4, maximum: 100 }
    validates :description, presence: true, length: { minimum: 6, maximum: 300 }
end
