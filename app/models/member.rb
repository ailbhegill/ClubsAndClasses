class Member < ActiveRecord::Base
  has_many :enrollments, dependent: :destroy
  def add_activity(activity_id)
    current_enroll = enrollments.find_by(activity_id: activity_id)
    if current_enroll
      #do nothing for now
    else
      current_enroll = enrollments.build(activity_id: activity_id)
    end
    current_enroll
  end
end
