class CreateCauses < ActiveRecord::Migration[6.0]
  def change
    create_table :causes do |t|
      t.integer :politician_id
      t.integer :industry_id
      t.string :priority

      t.timestamps
    end
  end
end
