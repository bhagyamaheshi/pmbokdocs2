class DocumentCategoriesController < ApplicationController
  before_action :set_document_category, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @document_categories = DocumentCategory.all
    respond_with(@document_categories)
  end

  def show
    respond_with(@document_category)
  end

  def new
    @document_category = DocumentCategory.new
    respond_with(@document_category)
  end

  def edit
  end

  def create
    @document_category = DocumentCategory.new(document_category_params)
    @document_category.save
    respond_with(@document_category)
  end

  def update
    @document_category.update(document_category_params)
    respond_with(@document_category)
  end

  def destroy
    @document_category.destroy
    respond_with(@document_category)
  end

  private
    def set_document_category
      @document_category = DocumentCategory.find(params[:id])
    end

    def document_category_params
      params.require(:document_category).permit(:categoryId, :categoryName)
    end
end
