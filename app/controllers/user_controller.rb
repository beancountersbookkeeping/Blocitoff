class UseController < ApplicationController
  def show
    @user = User.all
  end
end
