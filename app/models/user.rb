class User < ActiveRecord::Base
  has_many :slots

  has_many :courses, :through => :slots

  def full_name
    return "#{first_name} #{last_name}"
  end

  validates :first_name, :presence => true

  validates :last_name, :presence => true

  validates :email, :presence => true

  validates :phone, :presence => true

end
