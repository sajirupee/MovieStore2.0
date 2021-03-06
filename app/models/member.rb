class Member < ActiveRecord::Base
  
  has_many :rents, :dependent => :destroy
  
  def create
    Member.create(params[:member])
  end
  
  def self.search(search)
    if search
      where('name LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
  
  private
    # Using a private method to encapsulate the permissible parameters is just a good pattern
    # since you'll be able to reuse the same permit list between create and update. Also, you
    # can specialize this method with per-user checking of permissible attributes.
    def movie_params
      params.require(:member).permit(:name, :contact, :address, :nic)
    end
end
