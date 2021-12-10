class SessionsController < ApplicationController
  def new; end

  def create
    user_no = params[:session][:user_no]
    password = params[:session][:password]
    if login(user_no, password)
      flash[:success] = 'ログインに成功しました。'
      redirect_to controller: :works, action: :index
    else
      flash.now[:danger] = 'ログインに失敗しました。'
      render :new
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
    if @user&.authenticate(password)
      session[:user_id] = @user.id
      true
    else
      false
    end
  end
end
