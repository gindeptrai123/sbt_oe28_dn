class Admin::UsersController < AdminController
  before_action :load_user, only: [:update, :destroy]
  before_action :all_users, only: :index

  def index; end

  def new
    @user = User.new
  end

  def create
    @user = User.new user_params
    if @user.save
      flash[:success] = t "msg.create_user_success"
      redirect_to admin_users_path
    else
      flash[:danger] = t "msg.create_user_fail"
      render :new
    end
  end

  def update
    if @user.update_attributes role_params
      flash[:success] = t "msg.update_success"
      redirect_to admin_users_path
    else
      flash[:danger] = t "msg.update_fail"
      all_users
      render :index
    end
  end

  def destroy
    if @user.destroy
      flash[:success] = t "msg.user_delete_success"
    else
      flash[:danger] = t "msg.user_delete_fail"
    end
    redirect_to admin_users_path
  end

  private

  def user_params
    params.require(:user).permit User::USER_PARAMS
  end

  def role_params
    params.require(:user).permit :role
  end

  def load_user
    @user = User.find_by id: params[:id]
    return if @user
    flash[:danger] = t "msg.user_invalid"
    redirect_to admin_users_path
  end

  def all_users
    @users = User.newest.paginate page: params[:page],
       per_page: Settings.paginate.users
  end
end
