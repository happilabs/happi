class CategoriesController < ApplicationController
  # GET /categories
  # GET /categories.json

  before_filter :validate_admin, :except => [:index, :show, :product_list, :sorted_alphabetically]
  # before_filter :authenticate_user!, :only => [:show]

  def index
    @categories = Category.order("name ASC")
    @latest_reviews = Review.limit(3).order("created_at DESC")

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @categories }
    end
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
    @category = Category.find(params[:id])
    @categories = Category.order("name ASC")
    @product_list = @category.products_sorted_by_average_product_rating
    @review = Review.new

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @category }
    end
  end

  def sorted_alphabetically
    @category = Category.find(params[:id])
    @categories = Category.order("name ASC")
    @product_list = @category.products_sorted_alphabetically

    respond_to do |format|
      format.html { render "show" }
    end
  end

  # GET /categories/new
  # GET /categories/new.json
  def new
    @category = Category.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @category }
    end
  end

  # GET /categories/1/edit
  def edit
    @category = Category.find(params[:id])
  end

  # POST /categories
  # POST /categories.json
  def create
    @category = Category.new(params[:category])

    respond_to do |format|
      if @category.save
        format.html { redirect_to @category, notice: 'Category was successfully created.' }
        format.json { render json: @category, status: :created, location: @category }
      else
        format.html { render action: "new" }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /categories/1
  # PUT /categories/1.json
  def update
    @category = Category.find(params[:id])

    respond_to do |format|
      if @category.update_attributes(params[:category])
        format.html { redirect_to @category, notice: 'Category was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @category.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    @category = Category.find(params[:id])
    @category.destroy

    respond_to do |format|
      format.html { redirect_to categories_url }
      format.json { head :no_content }
    end
  end

	def categories_index
		@categories = Category.order("name ASC")
	end

end
