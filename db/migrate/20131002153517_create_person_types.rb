class CreatePersonTypes < ActiveRecord::Migration
  def change
    create_table :person_types do |t|
      t.string :name, unique: true

      t.timestamps
    end
  end
end
