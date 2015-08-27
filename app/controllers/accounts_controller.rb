class AccountsController < ApplicationController
  skip_after_action :verify_authorized
  before_action :set_user

  def show
  end

  def edit
  end

  def index_articles
    @articles = @account.articles
  end

  def update
    @account.update(user_params)

    redirect_to account_path
  end

  def annuaire
    @users = User.all
  end

  private
  def user_params
    params.require(:user).permit(:picture, :first_name, :last_name)
  end

  def set_user
    @account = current_user
  end
end
