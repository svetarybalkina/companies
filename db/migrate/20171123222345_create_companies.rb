class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :title
      t.date :initial_date
      t.integer :staff_quantity

      t.timestamps
    end
  end
end
