class AddDefaultToUsers < ActiveRecord::Migration[5.2]
  def change
    change_column :users, :bio, :string, :default => "404: bio not found."
  end
end
