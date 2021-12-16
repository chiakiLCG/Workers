class WorksController < ApplicationController
  before_action :require_user_logged_in, only: [:index]
  def index
    @work = Work.new
    @time = Time.now.strftime('%Y/%m/%d %H:%M')
  end

  def show; end

  def new; end

  def create
    if params[:modal_start_time].present?
      @work = Work.new(start_time_params)
      # binding.pry
      if @work.save
        redirect_to works_path, notice: '今日も1日頑張りましょう！'
      else
        flash.now[:danger] = '出勤打刻登録に失敗しました。'
        render :index
      end
    else
      @work = Work.new(end_time_params)
      if @work.save
        redirect_to works_path, notice: '今日も1日お疲れ様でした！'
      else
        flash.now[:danger] = '退勤打刻登録に失敗しました。'
        render :index
      end
    end
  end

  private

  def start_time_params
    params.permit(:start_time)
  end

  def end_time_params
    params.permit(:user_id)
  end
end
