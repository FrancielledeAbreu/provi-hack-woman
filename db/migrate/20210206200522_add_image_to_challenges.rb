class AddImageToChallenges < ActiveRecord::Migration[6.1]
  def change
    add_column :challenges, :image, :string
  end
end
