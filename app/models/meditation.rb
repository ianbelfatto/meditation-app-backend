class Meditation < ApplicationRecord
  belongs_to :user
  has_many :meditation_mantras
end
