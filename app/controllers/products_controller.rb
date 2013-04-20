class ProductsController < ApplicationController
  
  before_filter :find_section
  before_filter :find_category 
  
  before_filter :auth, except:[:show, :index]
  
  helper_method :items
  
  def items
    Item.where(page: "products")
  end

  def find_section
    @section = Section.find(params[:section_id])
  end
  
  def find_category
    @category = Category.find(params[:category_id])
  end
  
  # GET /products
  # GET /products.json
  def index
    @products = @category.products

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @products }
    end
  end

  # GET /products/1
  # GET /products/1.json
  def show
    @product = @category.products.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: [@category, @product] }
    end
  end

  # GET /products/new
  # GET /products/new.json
  def new
    @product = @category.products.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @product }
    end
  end

  # GET /products/1/edit
  def edit
    @product = @category.products.find(params[:id])
  end

  # POST /products
  # POST /products.json
  def create
    @product = @category.products.new(params[:product])

    respond_to do |format|
      if @product.save
        format.html { redirect_to sections_url, notice: 'Product was successfully created.' }
        format.json { render json: sections_url, status: :created, location: @product }
      else
        format.html { render action: "new" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /products/1
  # PUT /products/1.json
  def update
    @product = @category.products.find(params[:id])

    respond_to do |format|
      if @product.update_attributes(params[:product])
        format.html { redirect_to [@section,@category, @product], notice: "<br/> <p>Update</p>" }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @product.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @product = Product.find(params[:id])
    @product.destroy

    respond_to do |format|
      format.html { redirect_to sections_url }
      format.json { head :no_content }
    end
  end
  
  
end
