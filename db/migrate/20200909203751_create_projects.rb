class CreateProjects < ActiveRecord::Migration[5.2]
  def change
    create_table :projects do |t|
      t.string :name, null: false, limit: 100
      t.text :description, null: false
      t.date :start_date
      t.date :end_date
      t.decimal :budget_amount, null: false, precision: 12, scale: 2
      t.decimal :estimated_amount, null: false, precision: 12, scale: 2
      t.decimal :total_amount, null: false, precision: 12, scale: 2

      t.timestamps
    end
  end
end
