class Course < ActiveRecord::Base
  belongs_to :category
  has_many :users, :through => :slots

  validates :start_date, :presence => true

  validates :end_date, :presence => true

  def full_course_title
    return "#{category.name}: #{start_date.strftime("%b %e, %Y")} - #{end_date.strftime("%b %e, %Y")}"
  end

end
