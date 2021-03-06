class UserSessionsController < ApplicationController
  before_filter :require_no_user, :only => [:new, :create]
  before_filter :require_user, :only => :destroy

  def new
    @user_session = UserSession.new
  end
  
  def create

  @user_session = UserSession.new(params[:user_session])

  if @user_session.save
    flash[:notice] = "Login successful!"
    redirect_back_or_default user_url(@user_session.user)
  else
    if @user_session.rpx_data
      @user = User.new(@user_session.rpx_data)
      session.delete(:rpx_identifier)
      session[:rpx_identifier] = @rpx_identifier = @user_session.rpx_data[:rpx_identifier]
      render :template => "users/new"
    else
      render :action => :new
    end
  end
end

  def destroy
    current_user_session.destroy
    flash[:notice] = "Logout successful!"
    redirect_back_or_default new_user_session_url
  end
end
