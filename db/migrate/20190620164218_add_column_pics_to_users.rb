class AddColumnPicsToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :pic, :string, default: Faker::Avatar.image
  end
end
