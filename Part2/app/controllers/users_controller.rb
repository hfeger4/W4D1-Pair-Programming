class UsersController < ApplicationController
  def index
    # render text: "Hi there, I am in the index action :D :P"
    @users = User.all
    render json: @users
  end

  def create
    user = User.new(params[:user].permit(:user_name))
    if user.save
      render json: user
    else
      render(
        json: user.errors.full_messages, status: :unprocessable_entity
      )
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    #user = User.new(params[:user].permit(:user_name,))
    if @user
      render json: @user
    else
      render json: ["could not find post"]
    end
    #render json: user
  end

  def update
    @user = User.find(params[:id])

    if @user.update_attributes(user_params)
      render json: @user
    else
      render json: @user.error.full_messages, status: 400
    end
  end

  def destroy
    @user = User.find_by(id: params[:id])
    if @user
      @user.destroy
      render json: @user
    else
      render json: ["cant find cant delete"]
    end
  end

  private

  def user_params
    params.require(:user).permit(:user_name)
  end



end
