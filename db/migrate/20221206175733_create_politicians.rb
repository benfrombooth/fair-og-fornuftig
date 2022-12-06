class CreatePoliticians < ActiveRecord::Migration[6.0]
  def change
    create_table :politicians do |t|
      t.integer :district_id
      t.string :party
      t.integer :name
      t.string :photo
      t.string :last_name
      t.boolean :spokesperson
      t.string :username

      t.timestamps
    end
  end
end
