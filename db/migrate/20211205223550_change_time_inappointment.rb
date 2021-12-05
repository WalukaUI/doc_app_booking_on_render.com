class ChangeTimeInappointment < ActiveRecord::Migration[6.1]
  def change
    change_column :appointments, :time, :float
  end
end
