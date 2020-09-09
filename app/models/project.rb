class Project < ApplicationRecord
  PER_PAGE = 20

  validates :name, :description, :budget_amount, :estimated_amount, :total_amount, presence: true
end
