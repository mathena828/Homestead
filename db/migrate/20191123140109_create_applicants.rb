class CreateApplicants < ActiveRecord::Migration[6.0]
  def change
    create_table :applicants do |t|
      t.string :applicant_ssn
      t.string :applicant_name
      t.string :applicant_phone_number
      t.date :applicant_birthdate
      t.string :applicant_email
      t.belongs_to :property, null: false, foreign_key: true

      t.timestamps
    end
  end
end
