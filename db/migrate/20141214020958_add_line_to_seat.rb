class AddLineToSeat < ActiveRecord::Migration
  def change
  	add_column :seats, :deadline, :integer
  end
end
