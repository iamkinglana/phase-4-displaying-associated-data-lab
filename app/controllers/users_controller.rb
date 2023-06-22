class UsersController < ApplicationController
  def index
    users = User.all.order(rating: :desc)
    render json: users, include: :items
  end
end
