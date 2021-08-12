class Habit < ApplicationRecord
  has_many :habit_confirmations

  def confirmed_today?
    habit_confirmations.where(confirmation_date: Date.today).any?
  end

  def answer(date = Date.today)
    habit_confirmations.find_by(confirmation_date: date).answer
  end

  def diamonds
    self.habit_confirmations.where(answer: 1)
  end

  def stones
    self.habit_confirmations.where(answer: 0)
  end
end