class CategoriesController < ApplicationController
  skip_before_action :authenticate_user!, only: :index
  def index
    @pagy, @records = pagy(Category.all, items: 8)
  end
end
