class CreateStatuses < ActiveRecord::Migration[6.0]
  def change
    create_table :statuses do |t|
      t.string :status_type
      t.string :person_type
      t.boolean :remark

      t.timestamps
    end
  end
end
