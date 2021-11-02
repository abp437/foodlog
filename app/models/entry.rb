class Entry < ApplicationRecord
  def day
    self.created_at.strftime('%d %B, %Y')
  end
end
