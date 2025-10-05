class Movie < ActiveRecord::Base
 
  def self.all_ratings
    distinct.order(:rating).pluck(:rating)
  end

  def self.with_ratings(ratings_list)
    return all if ratings_list.blank?
    where(rating: ratings_list)
  end

end