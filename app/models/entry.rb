class Entry < ApplicationRecord
  validates :calories, :proteins, :carbohydrates, :fats, :meal_type, presence: true
  validates :calories, :proteins, :carbohydrates, :fats, numericality: true

  def day
    self.created_at.strftime(Entry.date_format)
  end

  def self.date_format
    # Here %B stands for readable month
    '%d %B, %Y'
  end
end
