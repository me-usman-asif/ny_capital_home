class ProjectSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :start_date, :end_date, :budget_amount, :estimated_amount, :total_amount
end
