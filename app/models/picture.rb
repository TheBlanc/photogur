class Picture < ApplicationRecord
  def self.created_after(time)
    self.where('created_at > ?', time)
  end

  def self.created_between(time1, time2)
    self.where('created_at >= ?', time1).where('created_at <= ?', time2)
  end

end
