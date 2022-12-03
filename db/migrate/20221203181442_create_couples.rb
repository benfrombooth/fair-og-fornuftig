class CreateCouples < ActiveRecord::Migration[6.0]
  def change
    create_table :couples do |t|
      t.integer :danish_user_id
      t.integer :foreign_user_id
      t.string :points
      t.string :city

      t.timestamps
    end
  end
end
