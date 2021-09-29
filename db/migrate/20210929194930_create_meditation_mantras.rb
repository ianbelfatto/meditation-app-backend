class CreateMeditationMantras < ActiveRecord::Migration[6.1]
  def change
    create_table :meditation_mantras do |t|

      t.timestamps
    end
  end
end
