class Movie < ActiveRecord::Base
  attr_accessible :name, :genera, :year, :language
  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
end
