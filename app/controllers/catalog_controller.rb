class CatalogController < ApplicationController
  def index
    @activities = Activity.order(:name)
  end
end
