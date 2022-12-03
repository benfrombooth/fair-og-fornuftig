class CreateInjustices < ActiveRecord::Migration[6.0]
  def change
    create_table :injustices do |t|
      t.string :description
      t.string :injustice_type
      t.integer :policy_id
      t.integer :value_id

      t.timestamps
    end
  end
end
