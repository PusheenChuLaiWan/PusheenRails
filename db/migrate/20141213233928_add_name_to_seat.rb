class AddNameToSeat < ActiveRecord::Migration
  def change
  	add_column :seats, :name, :string
  	add_column :seats, :seat_id, :integer
  end
end
