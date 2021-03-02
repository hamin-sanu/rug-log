class LogsController < ApplicationController
  def index
    @logs = Log.all
  end

  def new
    @category = Category.all
    user_id = current_user.id
    # category_id = category_id
    @log = Log.new(user_id: user_id, category_id: @category)

  end

  def show
  end

  def create
    @log = Log.create(log_params)
    # user_id = current_user.id
    # # category_id = category_id
    # @log = Log.new(user_id: user_id, category_id: @category)
    # # @log.save
    redirect_to root_path
  end

  def edit
    @category = Category.all
    @log = Log.find(params[:id])
  end

  def update
    @log = Log.find(params[:id])
    @log.update(log_params)
    redirect_to root_path(@log)
  end

  def destroy
    @log = Log.find(params[:id])
    @log.destroy
    redirect_to root_path
  end

  private
  def log_params
    params.require(:log).permit(:category_id, :team_a, :team_b, :score_a, :score_b, :delivery_fee_id, :matchData, :how, :location, :body).merge(user_id: current_user.id)
  end
end