class HabitConfirmation < ApplicationRecord
  belongs_to :habit
  validates :confirmation_date, presence: true
end
