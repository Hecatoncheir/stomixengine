require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  setup do
    @product = products(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:products)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create product" do
    assert_difference('Product.count') do
      post :create, product: { advantages: @product.advantages, colors: @product.colors, desc: @product.desc, dilution: @product.dilution, expense: @product.expense, name: @product.name, packing: @product.packing, pdf_1: @product.pdf_1, pdf_2: @product.pdf_2, pdf_3: @product.pdf_3 }
    end

    assert_redirected_to product_path(assigns(:product))
  end

  test "should show product" do
    get :show, id: @product
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @product
    assert_response :success
  end

  test "should update product" do
    put :update, id: @product, product: { advantages: @product.advantages, colors: @product.colors, desc: @product.desc, dilution: @product.dilution, expense: @product.expense, name: @product.name, packing: @product.packing, pdf_1: @product.pdf_1, pdf_2: @product.pdf_2, pdf_3: @product.pdf_3 }
    assert_redirected_to product_path(assigns(:product))
  end

  test "should destroy product" do
    assert_difference('Product.count', -1) do
      delete :destroy, id: @product
    end

    assert_redirected_to products_path
  end
end
