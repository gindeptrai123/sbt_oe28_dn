class Admin::PagesController < AdminController
  before_action :authenticate_user!, :check_is_admin
  def home; end
end
