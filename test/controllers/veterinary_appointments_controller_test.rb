require 'test_helper'

class VeterinaryAppointmentsControllerTest < ActionController::TestCase
  setup do
    @veterinary_appointment = veterinary_appointments(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:veterinary_appointments)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create veterinary_appointment" do
    assert_difference('VeterinaryAppointment.count') do
      post :create, veterinary_appointment: { customer_id: @veterinary_appointment.customer_id, dateappointment: @veterinary_appointment.dateappointment, note: @veterinary_appointment.note, pet_id: @veterinary_appointment.pet_id }
    end

    assert_redirected_to veterinary_appointment_path(assigns(:veterinary_appointment))
  end

  test "should show veterinary_appointment" do
    get :show, id: @veterinary_appointment
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @veterinary_appointment
    assert_response :success
  end

  test "should update veterinary_appointment" do
    patch :update, id: @veterinary_appointment, veterinary_appointment: { customer_id: @veterinary_appointment.customer_id, dateappointment: @veterinary_appointment.dateappointment, note: @veterinary_appointment.note, pet_id: @veterinary_appointment.pet_id }
    assert_redirected_to veterinary_appointment_path(assigns(:veterinary_appointment))
  end

  test "should destroy veterinary_appointment" do
    assert_difference('VeterinaryAppointment.count', -1) do
      delete :destroy, id: @veterinary_appointment
    end

    assert_redirected_to veterinary_appointments_path
  end
end
