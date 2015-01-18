class CreateTransactions < ActiveRecord::Migration
  def change
    create_table :transactions do |t|
      t.date :date
      t.integer :amount
      t.text :credit
      t.text :description
      t.boolean :recurring
      t.text :recurrence

      t.timestamps null: false
    end
  end
end
