class RemoveTimeFromVeterinaryAppointment < ActiveRecord::Migration
  def change
    remove_column :veterinary_appointments, :time, :time
  end
end
