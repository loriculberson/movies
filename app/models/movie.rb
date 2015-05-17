class Movie < ActiveRecord::Base
  validates :title, :rating, :total_gross, presence: true

  def flop?
    total_gross.blank? || total_gross < 50000000
  end
end
