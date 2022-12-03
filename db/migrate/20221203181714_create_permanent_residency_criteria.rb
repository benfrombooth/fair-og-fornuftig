class CreatePermanentResidencyCriteria < ActiveRecord::Migration[6.0]
  def change
    create_table :permanent_residency_criteria do |t|
      t.boolean :language_requirement
      t.boolean :work_requirement
      t.boolean :inicome_requirement
      t.string :active_citizenship_requirement
      t.integer :user_id

      t.timestamps
    end
  end
end
