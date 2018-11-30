class TaksController < ApplicationController
  before_action :set_task
  before_action :set_tak, only: [:show, :edit, :update, :destroy]
  
  def index
    @taks = @list.taks.all
  end

  def show
  end

  def new
    @tak = @list.taks.new
  end
end
