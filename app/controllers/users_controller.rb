class UsersController < ApplicationController
  def index
    @user = User.all
    @books = @user.books
  end

  def edit
  end
end
