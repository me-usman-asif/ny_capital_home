class Project < ApplicationRecord
  PER_PAGE = 20

  validates :name, :description, :budget_amount, :estimated_amount, :total_amount, presence: true

  class << self
    def apply_filters(params)
      # assuming that there will always be at least one filter among these else we will add up some guarded constraints
      records = Project
      records = records.where(name: params[:name]) if params[:name].present?
      records = records.where(description: params[:description]) if params[:description].present?
      records = records.where(start_date: params[:start_date]) if params[:start_date].present?
      records = records.where(end_date: params[:end_date]) if params[:end_date].present?
      records = records.where(budget_amount: params[:budget_amount]) if params[:budget_amount].present?
      records = records.where(estimated_amount: params[:estimated_amount]) if params[:estimated_amount].present?
      records = records.where(total_amount: params[:total_amount]) if params[:total_amount].present?

      records
    end
  end
end
