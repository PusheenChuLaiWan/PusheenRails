class AddDeadToSeat < ActiveRecord::Migration
  def change
  	add_column :seats, :dead, :string
  end
end
