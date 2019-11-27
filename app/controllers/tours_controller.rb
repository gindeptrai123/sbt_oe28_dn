class ToursController < ApplicationController
  before_action :load_tour, only: :show

  def index
    @q = Tour.ransack(params[:q])
    @tours = @q.result.newest.paginate page: params[:page],
      per_page: Settings.tours
  end

  def show; end
end
