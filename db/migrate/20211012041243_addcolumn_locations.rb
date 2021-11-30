class AddcolumnLocations < ActiveRecord::Migration[6.1]
  def change
    add_column :locations, :image, :string
    add_column :doctors, :doctor, :boolean
    add_column :patients, :patient, :boolean
    remove_column:appointments, :time
    add_column :appointments, :time, :integer
  end
end
