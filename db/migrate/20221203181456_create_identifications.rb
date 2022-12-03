class CreateIdentifications < ActiveRecord::Migration[6.0]
  def change
    create_table :identifications do |t|
      t.string :identification_type
      t.string :person_type
      t.string :remark

      t.timestamps
    end
  end
end
