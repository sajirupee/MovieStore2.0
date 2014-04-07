class Rent < ActiveRecord::Base
  belongs_to :movie
  belongs_to :member
  
  def self.search(search)
    if search
      find(:all, :conditions => ['member_id LIKE ?', "%#{search}%"])
    else
      find(:all)
    end
  end
end
