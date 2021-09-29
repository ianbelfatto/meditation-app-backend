class AddMeditationIdCategorySayingToMeditationMantras < ActiveRecord::Migration[6.1]
  def change
    add_column :meditation_mantras, :meditation_id, :integer
    add_column :meditation_mantras, :category, :string
    add_column :meditation_mantras, :saying, :string
  end
end
