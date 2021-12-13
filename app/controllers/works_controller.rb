class WorksController < ApplicationController
  before_action :require_user_logged_in, only: [:index]
  def index; end

  def show; end

  def new; end

  def create; end
end
