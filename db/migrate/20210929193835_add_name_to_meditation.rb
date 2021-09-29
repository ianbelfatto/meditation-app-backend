class AddNameToMeditation < ActiveRecord::Migration[6.1]
  def change
    add_column :meditations, :name, :string
  end
end
