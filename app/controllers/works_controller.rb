class WorksController < ApplicationController
  before_action :require_user_logged_in, only: [:index]
  def index
    @work = Work.new
    @works = Work.all
    @time = Time.now.strftime('%Y/%m/%d %H:%M')
  end

  def show; end

  def new
    @work = Work.find(params[:id])
  end

  def create
    @work = current_user.works.build(timecard_params)
    @work.date = Date.today
    if @work.save
      redirect_to works_path, flash: { info: '打刻登録しました' }
    else
      flash.now[:danger] = '出勤打刻登録に失敗しました'
      render :index
    end
  end

  private

  def timecard_params
    params.permit(:start_time, :end_time, :break_time, :comment)
  end
end
