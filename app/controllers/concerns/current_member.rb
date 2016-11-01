module CurrentMember
  extend ActiveSupport::Concern

  private

  def set_member
    @member = Member.find(session[:member_id])
  rescue ActiveRecord::RecordNotFound
    @member = Member.create
    session[:member_id] = @member.id
  end
end
