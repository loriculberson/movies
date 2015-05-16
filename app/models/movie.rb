class Movie < ActiveRecord::Base
  validates :title, :rating, :total_gross, presence: true
end
