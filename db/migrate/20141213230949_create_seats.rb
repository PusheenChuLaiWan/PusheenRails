class CreateSeats < ActiveRecord::Migration
  def change
    create_table :seats do |t|
      t.string :date
      t.string :time
      t.integer :period
      t.boolean :isReserved

      t.timestamps
    end
  end
end
