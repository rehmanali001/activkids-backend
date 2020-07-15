class CategoriesController < ApplicationController

  # GET /categories
  def index
    @categories = Category.all
    render json: @categories
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_category
      @category = Category.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def category_params
      params.require(:category).permit(:title, :activity_id)
    end
end
