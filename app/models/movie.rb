class Movie < ActiveRecord::Base
    has_many :reviews

  def self.all_ratings
    ['G', 'PG', 'PG-13', 'R']
  end
end