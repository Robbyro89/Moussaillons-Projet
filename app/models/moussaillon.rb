class Moussaillon < ApplicationRecord
  validates :pseudo, presence: true, length: { maximum: 50 },
             uniqueness: true
end
