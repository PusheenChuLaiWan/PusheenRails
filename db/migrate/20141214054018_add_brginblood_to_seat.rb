class AddBrginbloodToSeat < ActiveRecord::Migration
  def change
  	add_column :seats, :beginTime, :string
  end
end
