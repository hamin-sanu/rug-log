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
    if @log.valid?
      redirect_to root_path, notice: '新しいログを投稿しました！'
    else 
      flash[:alert] = '投稿できませんでした。項目を確認してください。'
      redirect_to action: "new"
    end
  end

  def edit
    @category = Category.all
    @log = Log.find(params[:id])
  end

  def update
    @log = Log.find(params[:id])
    @log.update(log_params)
    redirect_to root_path(@log), notice: 'ログを編集しました。'
  end

  def destroy
    @log = Log.find(params[:id])
    @log.destroy
    redirect_to root_path, notice: 'ログを削除しました。'
  end

  private
  def log_params
    params.require(:log).permit(:category_id, :team_a, :team_b, :score_a, :score_b, :delivery_fee_id, :matchData, :how, :location, :body).merge(user_id: current_user.id)
  end
end