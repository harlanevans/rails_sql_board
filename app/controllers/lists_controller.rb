class ListsController < ApplicationController
  before_action :set_board
  before_action :set_lists, :only [:show, :edit, :update, :destroy]
  
  def index
    @lists = @board.lists
  end

  def show
    #render form partial for practice?
  end

  def new
    #render form? partial for practice?
  end

  def create
    @list = @board.lists.new(list_params)

    if @list.save
      redirect_to [@board, @list]
    else
      render :new
    end 
  end

  def edit 
    #render form? partial for practice?
  end

  def update
    if @list.update(list_params)
      redirect_to [@board, @list]
    else
      render :edit
    end
  end

  def destroy
    @list.destroy
    redirect_to board_lists_path
  end

    private

    def set_board
      @board = Board.find(params[:board_id])
    end

    def set_lists
      @list = List.find(params[:id])
    end

    def list_params
      params.require(:list).permit(:name, :date_created)
    end

  end