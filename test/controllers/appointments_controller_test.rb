require 'test_helper'

class AppointmentsControllerTest < ActionController::TestCase
  setup do
    @appointment = appointments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:appointments)
  end

  test "should create appointment" do
    assert_difference('Appointment.count') do
      post :create, appointment: { availability: @appointment.availability, place: @appointment.place }
    end

    assert_response :success
  end

  test "should show appointment" do
    get :show, id: @appointment
    assert_response :success
  end

  test "should update appointment" do
    patch :update, id: @appointment, appointment: { availability: @appointment.availability, place: @appointment.place }
    assert_response :success
  end

end
