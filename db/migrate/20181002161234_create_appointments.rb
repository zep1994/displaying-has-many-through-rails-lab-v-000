class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
      t.datetime :appointment_datetime
      t.belongs_to :doctor_id
      t.belongs_to :patient, index: true, foreign_key: true 
    end
  end
end
