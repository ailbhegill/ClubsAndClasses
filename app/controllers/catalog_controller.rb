class CatalogController < ApplicationController
  skip_before_action :authorize
  include CurrentMember
  before_action :set_member
  def index
    @activities = Activity.order(:name)
  end
end
