class LogsController < ApplicationController
  def index
  end

  def new
    @category = Category.all
  end

  def log
  end
end