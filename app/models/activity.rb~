class Activity < ActiveRecord::Base
  before_destroy :ensure_not_referenced_by_any_enrollment
  has_many :enrollments
validates :name, :description, :image_url, :county, :address, :days_and_times, :email, :contact_person, :contact_no, presence: true
  validates :name, uniqueness: true
  validates :price_per_class, numericality: { greater_than_or_equal_to: 0.01 }
  validates :image_url, allow_blank: true, format: {
      with: %r{\.(gif|jpg|png)\Z}i,
      message: 'must be a URL for GIF, JPG or PNG image.'
  }

  private
  # ensure that there are no line items referencing this product
  def ensure_not_referenced_by_any_enrollments
    if enrollments.empty?
      return true
    else
      errors.add(:base, 'Enrollments present')
      return false
    end
  end

end
