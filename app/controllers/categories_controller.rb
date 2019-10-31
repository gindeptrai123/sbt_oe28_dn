class CategoriesController < ApplicationController
  def show
    @title = returntitle params[:id_category]
    @reviews = Review.load_review(params[:id_category])
                     .newest
                     .paginate page: params[:page], per_page: Settings.review
  end

  private

  def returntitle id
    case id
    when Settings.news_id
      t "nav.news"
    when Settings.food_id
      t "nav.food"
    when Settings.place_id
      t "nav.place"
    else
      redirect_to root_path
    end
  end
end
