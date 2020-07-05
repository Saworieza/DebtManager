class CreateDebts < ActiveRecord::Migration[6.0]
  def change
    create_table :debts do |t|
      t.integer :amount
      t.date :date
      t.text :reason
      t.references :user, null: false, foreign_key: true
      t.references :debtor, null: false, foreign_key: true

      t.timestamps
    end
  end
end
