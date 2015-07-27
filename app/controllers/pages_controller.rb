class PagesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:index, :show]

  def home
    @first = Article.where(first: true)
    @second = Article.where(second: true)
  end
end
