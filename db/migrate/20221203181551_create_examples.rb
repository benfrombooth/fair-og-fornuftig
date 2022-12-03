class CreateExamples < ActiveRecord::Migration[6.0]
  def change
    create_table :examples do |t|
      t.integer :value_id
      t.integer :user_id
      t.integer :policy_id
      t.string :remark

      t.timestamps
    end
  end
end
