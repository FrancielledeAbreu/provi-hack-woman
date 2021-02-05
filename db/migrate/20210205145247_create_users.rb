class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.string :password, null: false
      t.datetime :birthdate
      t.string :password_confirmation
      t.string :job
      t.integer :experience

      t.timestamps
    end
  end
end
