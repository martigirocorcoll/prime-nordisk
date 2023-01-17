require "test_helper"

class PagadorsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @pagador = pagadors(:one)
  end

  test "should get index" do
    get pagadors_url
    assert_response :success
  end

  test "should get new" do
    get new_pagador_url
    assert_response :success
  end

  test "should create pagador" do
    assert_difference('Pagador.count') do
      post pagadors_url, params: { pagador: { nombre: @pagador.nombre } }
    end

    assert_redirected_to pagador_url(Pagador.last)
  end

  test "should show pagador" do
    get pagador_url(@pagador)
    assert_response :success
  end

  test "should get edit" do
    get edit_pagador_url(@pagador)
    assert_response :success
  end

  test "should update pagador" do
    patch pagador_url(@pagador), params: { pagador: { nombre: @pagador.nombre } }
    assert_redirected_to pagador_url(@pagador)
  end

  test "should destroy pagador" do
    assert_difference('Pagador.count', -1) do
      delete pagador_url(@pagador)
    end

    assert_redirected_to pagadors_url
  end
end
