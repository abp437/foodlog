require "test_helper"

class EntryTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  test "is valid with valid attributes" do
    entry = Entry.new(meal_type: 'Breakfast', calories: 23, fats: 34, carbohydrates: 233, proteins: 56)
    assert entry.save
  end
end
