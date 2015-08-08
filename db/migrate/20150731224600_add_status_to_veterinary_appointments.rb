class AddStatusToVeterinaryAppointments < ActiveRecord::Migration
  def change
    add_column :veterinary_appointments, :status, :boolean
  end
end
