class AddUserIdToMeditation < ActiveRecord::Migration[6.1]
  def change
    add_column :meditations, :user_id, :integer
  end
end
