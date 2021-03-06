require 'test_helper'

class ActivitiesControllerTest < ActionController::TestCase
  setup do
    @activity = activities(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:activities)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create activity" do
    assert_difference('Activity.count') do
      post :create, activity: { address: @activity.address, contact_no: @activity.contact_no, contact_person: @activity.contact_person, county: @activity.county, days_and_times: @activity.days_and_times, description: @activity.description, email: @activity.email, image_url: @activity.image_url, name: "New Activity", price_per_class: @activity.price_per_class }
    end

    assert_redirected_to activity_path(assigns(:activity))
  end

  test "should show activity" do
    get :show, id: @activity
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @activity
    assert_response :success
  end

  test "should update activity" do
    patch :update, id: @activity, activity: { address: @activity.address, contact_no: @activity.contact_no, contact_person: @activity.contact_person, county: @activity.county, days_and_times: @activity.days_and_times, description: @activity.description, email: @activity.email, image_url: @activity.image_url, name: @activity.name, price_per_class: @activity.price_per_class }
    assert_redirected_to activity_path(assigns(:activity))
  end

  test "should destroy activity" do
    assert_difference('Activity.count', -1) do
      delete :destroy, id: @activity
    end

    assert_redirected_to activities_path
  end
end
