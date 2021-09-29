class CreateMeditations < ActiveRecord::Migration[6.1]
  def change
    create_table :meditations do |t|

      t.timestamps
    end
  end
end
