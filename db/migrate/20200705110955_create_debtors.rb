class CreateDebtors < ActiveRecord::Migration[6.0]
  def change
    create_table :debtors do |t|
      t.string :name
      t.integer :number
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
