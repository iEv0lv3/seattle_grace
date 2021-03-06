class AddPatientDoctorsTable < ActiveRecord::Migration[5.1]
  def change
    create_table :patient_doctors do |t|
      t.timestamps
      t.references :doctor, foreign_key: true
      t.references :patient, foreign_key: true
    end
  end
end
