class CreateCauses < ActiveRecord::Migration[6.0]
  def change
    create_table :causes do |t|
      t.string :quote
      t.integer :politician_id
      t.boolean :name
      t.integer :industry_id

      t.timestamps
    end
  end
end
