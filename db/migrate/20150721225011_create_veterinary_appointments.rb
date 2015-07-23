class CreateVeterinaryAppointments < ActiveRecord::Migration
  def change
    create_table :veterinary_appointments do |t|
      t.references :customer, index: true, foreign_key: true
      t.references :pet, index: true, foreign_key: true
      t.datetime :dateappointment
      t.string :note

      t.timestamps null: false
    end
  end
end
