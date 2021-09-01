require "test_helper"

class TimeslotsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @timeslot = timeslots(:one)
  end

  test "should get index" do
    get timeslots_url, as: :json
    assert_response :success
  end

  test "should create timeslot" do
    assert_difference('Timeslot.count') do
      post timeslots_url, params: { timeslot: {  } }, as: :json
    end

    assert_response 201
  end

  test "should show timeslot" do
    get timeslot_url(@timeslot), as: :json
    assert_response :success
  end

  test "should update timeslot" do
    patch timeslot_url(@timeslot), params: { timeslot: {  } }, as: :json
    assert_response 200
  end

  test "should destroy timeslot" do
    assert_difference('Timeslot.count', -1) do
      delete timeslot_url(@timeslot), as: :json
    end

    assert_response 204
  end
end
