class CreateJournalists < ActiveRecord::Migration[6.0]
  def change
    create_table :journalists do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.string :outlet
      t.integer :user_id

      t.timestamps
    end
  end
end
