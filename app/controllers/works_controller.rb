class WorksController < ApplicationController
  before_action :require_user_logged_in, only: [:index]
  def index
    @time = Time.now.strftime('%Y/%m/%d %H:%M')
  end

  def show; end

  def new; end

  def create; end
end
