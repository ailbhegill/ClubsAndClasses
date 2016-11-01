class Member < ActiveRecord::Base
	has_many :enrollments, dependent: :destroy
end
