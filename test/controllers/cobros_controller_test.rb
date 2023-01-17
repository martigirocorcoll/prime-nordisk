require "test_helper"

class CobrosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @cobro = cobros(:one)
  end

  test "should get index" do
    get cobros_url
    assert_response :success
  end

  test "should get new" do
    get new_cobro_url
    assert_response :success
  end

  test "should create cobro" do
    assert_difference('Cobro.count') do
      post cobros_url, params: { cobro: { comprador_id: @cobro.comprador_id, fecha: @cobro.fecha, quantitat: @cobro.quantitat, sale_id: @cobro.sale_id } }
    end

    assert_redirected_to cobro_url(Cobro.last)
  end

  test "should show cobro" do
    get cobro_url(@cobro)
    assert_response :success
  end

  test "should get edit" do
    get edit_cobro_url(@cobro)
    assert_response :success
  end

  test "should update cobro" do
    patch cobro_url(@cobro), params: { cobro: { comprador_id: @cobro.comprador_id, fecha: @cobro.fecha, quantitat: @cobro.quantitat, sale_id: @cobro.sale_id } }
    assert_redirected_to cobro_url(@cobro)
  end

  test "should destroy cobro" do
    assert_difference('Cobro.count', -1) do
      delete cobro_url(@cobro)
    end

    assert_redirected_to cobros_url
  end
end
