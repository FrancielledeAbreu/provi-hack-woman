class CreateChallenges < ActiveRecord::Migration[6.1]
  def change
    create_table :challenges do |t|
      t.string :name, null: false
      t.text :description, null: false
      t.integer :level, default: 0
      t.integer :challenges_type, default: 0
      t.integer :status, default: 0

      t.timestamps
    end
  end
end
