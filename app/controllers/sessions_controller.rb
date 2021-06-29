class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(user_no: params[:session][:user_no])
    if user && user.authenticate(params[:session][:password])
      log_in user
      redirect_back_or root_url
    else
      flash.now[:danger] = 'メールアドレスまたはパスワードが違います。'
      render 'new'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:success] = 'ログアウトしました。'
    render :new
  end

  private

  def login(user_no, password)
    @user = User.find_by(user_no: user_no)
    if @user && @user.authenticate(password)
      # ログイン成功
      session[:user_id] = @user.id
      return true
    else
      # ログイン失敗
      return false
    end
  end
end

