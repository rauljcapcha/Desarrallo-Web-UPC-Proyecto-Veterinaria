class ChangeDateAppointmentTypeInVeterinaryAppointment < ActiveRecord::Migration
  def up
    change_column :veterinary_appointments, :date, :datetime
  end

  def down
    change_column :veterinary_appointments, :date, :time
  end
end
