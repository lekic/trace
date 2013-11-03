class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :employee_id, unique: true
      t.string :name
      #t.string :email
      t.date :date_of_birth
      #t.string :username, unique: true
      #t.string :password
      t.date :date_joined
      #t.references :phone, index: true
      #t.references :address, index: true added to end
      t.references :person_type, index: true
      t.references :park, index: true
      t.integer :street_number
      t.string :street_name
      t.string :suburb
      t.string :state
      t.integer :postcode

      t.timestamps
    end
  end
end
