class CreatePolicies < ActiveRecord::Migration[6.0]
  def change
    create_table :policies do |t|
      t.string :description
      t.integer :injustice_id

      t.timestamps
    end
  end
end
