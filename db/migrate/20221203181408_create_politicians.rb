class CreatePoliticians < ActiveRecord::Migration[6.0]
  def change
    create_table :politicians do |t|
      t.integer :district_id
      t.string :party
      t.string :year_elected
      t.integer :status_id
      t.string :first_name
      t.string :last_name

      t.timestamps
    end
  end
end
