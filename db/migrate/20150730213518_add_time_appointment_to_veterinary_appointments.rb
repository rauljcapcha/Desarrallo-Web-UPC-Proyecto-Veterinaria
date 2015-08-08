class AddTimeAppointmentToVeterinaryAppointments < ActiveRecord::Migration
  def change
    add_column :veterinary_appointments, :timeappointment, :time
  end
end
