class User < ActiveRecord::Base
  has_many :courses, :through => :slots

  def full_name
    return "#{first_name} #{last_name}"
  end

end
